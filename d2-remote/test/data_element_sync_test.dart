import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/metadata/data_element/entities/data_element.entity.dart';
import 'package:d2_remote/modules/metadata/data_element/queries/data_element.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'data_element_sync_test.reflectable.dart';

import '../sample/current_user.sample.dart';
import '../sample//data_elements.sample.dart';

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
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.11';
  final user = User.fromApi(userData);
  await userQuery.setData(user).save();
  final dataElementQuery = DataElementQuery(database: db);

  final dhisDataElements = sampleDataElements;

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'https://play.dhis2.org/2.35.11/api/dataElements.json?fields=id,dirty,lastUpdated,created,name,displayName,shortName,code,formName,valueType,aggregationType,description,optionSet,fieldMask&paging=false',
    (server) => server.reply(200, dhisDataElements),
  );

  await dataElementQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<DataElement> dataElms = await dataElementQuery.get();

  test('should store all incoming data element metadata', () {
    expect(dataElms.length, 50);
  });
}
