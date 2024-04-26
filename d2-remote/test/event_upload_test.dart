import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/event.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/event.query.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_stage.entity.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_stage.query.dart';
import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
import 'package:d2_remote/modules/activity_management/activity/queries/activity.query.dart';
import 'package:d2_remote/modules/activity_management/project/entities/project.entity.dart';
import 'package:d2_remote/modules/activity_management/project/queries/project.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/current_user.sample.dart';
import '../sample/event_import_summary.sample.dart';
import '../sample/event_upload.sample.dart';
import '../sample/tracked_entity_instances.sample.dart';
import '../sample/program_stage.sample.dart';
import '../sample/project.sample.dart';
import 'tracked_entity_instance_upload_test.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await D2Remote.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['username'] = 'admin';
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.11';
  final user = User.fromApi(userData);
  UserQuery userQuery = UserQuery(database: db);
  await userQuery.setData(user).save();

  List<ProgramStage> programStages = [];

  (sampleProgramStages['programStages'] ?? []).forEach((programStage) {
    programStages.add(ProgramStage.fromJson(programStage));
  });

  await ProgramStageQuery().setData(programStages).save();

  // NMCP /////////
  List<Project> projects = [];
  sampleProjects['projects'].forEach((project) {
    projects.add(Project.fromJson({...project, 'dirty': false}));
  });

  await ProjectQuery().setData(projects).save();
  //////////////////

  final Event event = Event.fromJson({
    ...sampleTrackedEntityInstances['trackedEntityInstances'][0]['enrollments']
        [0]['events'][0],
    'dirty': true
  });

  await EventQuery().setData(event).save();

  final Event secondEvent = Event.fromJson({
    ...sampleTrackedEntityInstances['trackedEntityInstances'][2]['enrollments']
        [0]['events'][0],
    'dirty': true
  });

  await EventQuery().setData(secondEvent).save();

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onPost('https://play.dhis2.org/2.35.11/api/events',
      (server) => server.reply(409, sampleEventImportSummary),
      data: sampleEventUpload);

  List<Event>? eventUpload = await EventQuery().upload((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  test('should correctly set sync status to true for successfull import', () {
    final successImports =
        (eventUpload ?? []).where((event) => event.synced == true).toList();
    expect(successImports.length, 1);
  });

  test(
      'should not set sync status to true for unsuccessfull import and save import summary',
      () {
    final unSuccessfulImports = (eventUpload ?? [])
        .where((event) => event.syncFailed == false)
        .toList();

    expect(unSuccessfulImports.length, 1);
    expect(unSuccessfulImports[0].lastSyncSummary != null, true);
  });
}
