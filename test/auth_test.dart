import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/models/login-response.model.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/current_user.sample.dart';
import 'auth_test.reflectable.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences.setMockInitialValues({});
  // initializeReflectable();
  // sqfliteFfiInit();

  // await D2Remote.initialize(databaseFactory: databaseFactoryFfi);

  // var databaseFactory = databaseFactoryFfi;

  // var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  initializeReflectable();
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;

  await D2Remote.initialize(
      databaseFactory: databaseFactoryFfi, databaseName: 'flutter_test');

  var db = await databaseFactory.openDatabase(inMemoryDatabasePath);

  UserQuery userQuery = UserQuery(database: db);

  User? userResponse;
  try {
    userResponse = await userQuery.getOne();
  } catch (e) {}

  test('should not initialize database if no database name is supplied', () {
    expect(userResponse, null);
  });

  final isAuthenticated = await D2Remote.isAuthenticated(
      sharedPreferenceInstance: SharedPreferences.getInstance());

  test('should not be authenticated if database is not set', () {
    expect(isAuthenticated, false);
  });

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    // 'https://play.dhis2.org/2.35.11/api/me.json?fields=id,name,lastName,login,created,lastUpdated,birthday,gender,displayName,jobTitle,surname,employer,email,firstName,phoneNumber,nationality,userCredentials[code,id,name,lastLogin,displayName,username,userRoles[id,name,code]],organisationUnits[id,code,name],teams[id,code,name],dataViewOrganisationUnits[id,code,name],userGroups[id,name],authorities,programs,dataSets',
    'https://play.dhis2.org/2.35.11/api/me.json?fields=id,name,lastName,langKey,login,created,lastUpdated,birthday,gender,displayName,jobTitle,surname,employer,email,firstName,phoneNumber,nationality,code,lastLogin,username,userRoles[id,name,code],organisationUnits[id,code,name],teams[id,name],dataViewOrganisationUnits[id,code,name],userGroups[id,name],authorities,programs,dataSets',
    (server) => server.reply(200, userData),
  );

  final onlineLogIn = await D2Remote.logIn(
      username: 'admin',
      password: 'district',
      url: 'https://play.dhis2.org/2.35.11',
      databaseFactory: databaseFactoryFfi,
      dioTestClient: dio);

  final user =
      await D2Remote.userModule.user.withAuthorities().withRoles().getOne();

  test('should successfully authenticate user on online login', () {
    expect(onlineLogIn, LoginResponseStatus.ONLINE_LOGIN_SUCCESS);
  });

  test('should return appropriate user roles for a user', () {
    expect(user?.roles?.length, 13);
  });

  final logOutResponse = await D2Remote.logOut();

  final isAuthenticatedAfterLogout = await D2Remote.isAuthenticated(
      sharedPreferenceInstance: SharedPreferences.getInstance());

  test('should successfully log out user', () {
    expect(logOutResponse, true);
    expect(isAuthenticatedAfterLogout, false);
  });
}
