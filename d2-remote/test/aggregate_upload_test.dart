import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/aggregate/entities/data_value_set.entity.dart';
import 'package:d2_remote/modules/data/aggregate/queries/data_value_set.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/current_user.sample.dart';
import '../sample/data_value_set.sample.dart';
import '../sample/data_value_set_import_summary.sample.dart';
import '../sample/data_value_set_upload.sample.dart';
import 'aggregate_upload_test.reflectable.dart';

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

  final DataValueSet dataValueSet =
      DataValueSet.fromJson({...sampleDataValueSet, 'dirty': true});

  await DataValueSetQuery().setData(dataValueSet).save();

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onPost('https://play.dhis2.org/2.35.11/api/dataValueSets',
      (server) => server.reply(409, sampleDataValueSetImportSummary),
      data: sampleDataValueSetUpload);

  List<DataValueSet>? dataValueSetUpload =
      await D2Remote.aggregateModule.dataValueSet.upload((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  test('should correctly set sync status to true for successfull import', () {
    final successImports = (dataValueSetUpload ?? [])
        .where((event) => event.synced == true)
        .toList();
    expect(successImports.length, 1);
  });
}
