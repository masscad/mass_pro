import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked-entity.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/tracked_entity_instance.query.dart';
import 'package:d2_remote/modules/file_resource/entities/file_resource.entity.dart';
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
import '../sample/file_resource.sample.dart';
import '../sample/tracked_entity_instances.sample.dart';
import '../sample/tracked_entity_import_summary.sample.dart';
import '../sample/tracked_entity_instance_upload.sample.dart';
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

  final List<FileResource> fileResources = sampleFileResources
      .map((fileResource) => FileResource.fromJson(fileResource))
      .toList();

  await D2Remote.fileResourceModule.fileResource.setData(fileResources).save();

  final List<FileResource> savedFileResources =
      await D2Remote.fileResourceModule.fileResource.get();

  // NMCP /////////
  List<Project> projects = [];
  sampleProjects['projects'].forEach((project) {
    projects.add(Project.fromJson({...project, 'dirty': false}));
  });

  await ProjectQuery().setData(projects).save();
  //////////////////

  final TrackedEntityInstance trackedEntityInstance =
      TrackedEntityInstance.fromJson({
    ...sampleTrackedEntityInstances['trackedEntityInstances'][0],
    'dirty': true
  });

  await TrackedEntityInstanceQuery().setData(trackedEntityInstance).save();

  final TrackedEntityInstance secondTrackedEntityInstance =
      TrackedEntityInstance.fromJson({
    ...sampleTrackedEntityInstances['trackedEntityInstances'][1],
    'dirty': true
  });

  await TrackedEntityInstanceQuery()
      .setData(secondTrackedEntityInstance)
      .save();

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onPost('https://play.dhis2.org/2.35.11/api/trackedEntityInstances',
      (server) => server.reply(409, sampleTrackedEntityInstanceImportSummary),
      data: sampleTrackedEntityInstanceUpload);

  List<TrackedEntityInstance>? trackedEntityInstanceUpload =
      await TrackedEntityInstanceQuery().upload((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  test('should correctly set sync status to true for successfull import', () {
    final successImports = (trackedEntityInstanceUpload ?? [])
        .where((trackedEntityInstance) => trackedEntityInstance.synced == true)
        .toList();
    expect(successImports.length, 1);
  });

  test(
      'should not set sync status to true for unsuccessfull import and save import summary',
      () {
    final unSuccessfulImports = (trackedEntityInstanceUpload ?? [])
        .where((trackedEntityInstance) =>
            trackedEntityInstance.syncFailed == false)
        .toList();

    expect(unSuccessfulImports.length, 1);
    expect(unSuccessfulImports[0].lastSyncSummary != null, true);
  });
}
