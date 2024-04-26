import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked_entity_attribute_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/tracked_entity_attribute_value.query.dart';
import 'package:d2_remote/modules/data/tracker/queries/tracked_entity_instance.query.dart';
import 'package:d2_remote/modules/file_resource/entities/file_resource.entity.dart';
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
import 'file_resource_test.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await D2Remote.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  UserQuery userQuery = UserQuery(database: db);

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['username'] = 'admin';
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.14';
  final user = User.fromApi(userData);
  await userQuery.setData(user).save();

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'https://play.dhis2.org/2.35.14/api/trackedEntityInstances.json?ou=DiszpKrYNg8&ouMode=SELECTED&program=IpHINAT79UW&programStatus=ACTIVE&pageSize=50&order=created:desc&fields=*',
    (server) => server.reply(200, sampleTrackedEntityInstances),
  );

  final trackedEntityInstanceQuery = TrackedEntityInstanceQuery(database: db);

  await trackedEntityInstanceQuery
      .byOrgUnit('DiszpKrYNg8')
      .byProgram('IpHINAT79UW')
      .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  final List<FileResource> fileResources = sampleFileResources
      .map((fileResource) => FileResource.fromJson(fileResource))
      .toList();

  await D2Remote.fileResourceModule.fileResource.setData(fileResources).save();

  final List<FileResource> savedFileResources =
      await D2Remote.fileResourceModule.fileResource.get();

  test(
      'should save provided file resources information into the phone database',
      () {
    expect(savedFileResources.length, 1);
  });

  var formData = FormData.fromMap({
    'file': await MultipartFile.fromFile(savedFileResources[0].localFilePath)
  });

  dioAdapter.onPost('https://play.dhis2.org/2.35.14/api/fileResources',
      (server) => server.reply(202, fileResourceUploadResponse),
      data: formData);

  List<FileResource>? fileResourceUpload = await D2Remote
      .fileResourceModule.fileResource
      .upload((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  test('should correctly set sync status to true for successfuly import', () {
    final successImports = (fileResourceUpload ?? [])
        .where((event) => event.synced == true)
        .toList();
    expect(successImports.length, 1);
  });

  final attribute = fileResourceUpload?[0].elementId;
  final resourceId = fileResourceUpload?[0].resourceId;

  TrackedEntityAttributeValue attributeDataValue =
      await TrackedEntityAttributeValueQuery()
          .where(attribute: 'attribute', value: attribute)
          .getOne();

  test('should update tracked entity attribute value based on file resource',
      () {
    expect(attributeDataValue.value, resourceId);
  });
}
