import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/metadata/dataset/queries/data_set.query.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/current_user.sample.dart';
import 'data_store_sync_test.reflectable.dart';

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
  final dataSetQuery = DataSetQuery(database: db);

  final callOne = await HttpClient.get(
      // 'me.json?fields=id,name,created,lastUpdated,birthday,gender,displayName,jobTitle,surname,employer,email,firstName,nationality,userCredentials[code,id,name,lastLogin,displayName,username,userRoles[id,name,code]],organisationUnits[id,code,name],dataViewOrganisationUnits[id,code,name],userGroups[id,name],authorities,programs,dataSets');
      'me.json?fields=id,name,created,langKey,lastUpdated,birthday,gender,displayName,jobTitle,surname,employer,email,firstName,nationality,code,lastLogin,username,userRoles[id,name,code],organisationUnits[id,code,name],teams[id,name],dataViewOrganisationUnits[id,code,name],userGroups[id,name],authorities,programs,dataSets');
  // final callTwo = await HttpClient.get('users.json');

  // print(callTwo.body);

  test('should do something', () {
    expect('', '');
  });
}
