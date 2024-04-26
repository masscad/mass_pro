import 'package:d2_remote/modules/data/tracker/entities/enrollment.entity.dart';
import 'package:d2_remote/modules/data/tracker/models/enrollment_import_summary.dart';
import 'package:d2_remote/modules/data/tracker/queries/event.query.dart';
import 'package:d2_remote/shared/models/request_progress.model.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:dio/dio.dart';
import 'package:queue/queue.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/annotations/index.dart';
import '../entities/event.entity.dart';

@AnnotationReflectable
@Query(type: QueryType.DATA)
class EnrollmentQuery extends BaseQuery<Enrollment> {
  EnrollmentQuery({Database? database}) : super(database: database);

  Future<List<Enrollment>?> upload(Function(RequestProgress, bool) callback,
      {Dio? dioTestClient}) async {
    List<Enrollment> enrollments = await this
        .where(attribute: 'synced', value: false)
        .where(attribute: 'dirty', value: true)
        .get();

    final List<String> enrollmentIds = enrollments
        .map((trackedEntityInstance) => trackedEntityInstance.id as String)
        .toList();

    final List<Event> events = await EventQuery()
        .whereIn(attribute: 'enrollment', values: enrollmentIds, merge: false);

    final enrollmentUploadPayload = enrollments.map((enrollment) {
      return Enrollment.toUpload(enrollment, events);
    }).toList();

    final response = await HttpClient.post(this.apiResourceName as String,
        {'enrollments': enrollmentUploadPayload},
        database: this.database, dioTestClient: dioTestClient);

    final List<dynamic> importSummaries =
        (response.body?['response']?['importSummaries'] ?? []).toList();

    final queue = Queue(parallel: 50);
    num availableItemCount = 0;

    enrollments.forEach((enrollment) {
      final importSummary = importSummaries.lastWhere((summary) =>
          summary['reference'] != null &&
          summary['reference'] == enrollment.id);

      if (importSummary != null) {
        availableItemCount++;
        final syncFailed = importSummary['status'] == 'ERROR';
        enrollment.synced = !syncFailed;
        enrollment.dirty = syncFailed;
        enrollment.syncFailed = syncFailed;
        enrollment.lastSyncDate =
            DateTime.now().toIso8601String().split('.')[0].split('.')[0];
        enrollment.lastSyncSummary =
            EnrollmentImportSummary.fromJson(importSummary);
        queue.add(() => EnrollmentQuery().setData(enrollment).save());
      }
    });

    if (availableItemCount == 0) {
      queue.cancel();
    } else {
      await queue.onComplete;
    }

    return await EnrollmentQuery().byIds(enrollmentIds).get();
  }
}
