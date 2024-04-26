import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/event.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/event.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../sample/current_user.sample.dart';
import '../sample/event.sample.dart';
import 'event_sync_test.reflectable.dart';

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

  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  dioAdapter.onGet(
    'https://play.dhis2.org/2.35.11/api/events.json?fields=event,eventDate,dueDate,program,programStage,project,activity,orgUnit,trackedEntityInstance,enrollment,enrollmentStatus,status,attributeCategoryOptions,lastUpdated,created,followup,deleted,attributeOptionCombo,createdAtClient,lastUpdatedAtClient,completedDate,dataValues[dataElement,value,lastUpdated,created,storedBy,providedElseWhere]&project=ProzpKrYNg8&activity=ActzpKrYNg8&orgUnit=DiszpKrYNg8&program=IpHINAT79UW&programStage=ZzYYXq4fJie&order=eventDate:desc&pageSize=100&page=1',
    (server) => server.reply(200, sampleEvents),
  );

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['username'] = 'admin';
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.11';
  final user = User.fromApi(userData);
  await userQuery.setData(user).save();
  final eventQuery = EventQuery(database: db);

  await eventQuery
      .byProject('ProzpKrYNg8')
      .byActivity('ActzpKrYNg8')
      .byOrgUnit('DiszpKrYNg8')
      .byProgram('IpHINAT79UW')
      .byProgramStage('ZzYYXq4fJie')
      .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<Event> events = await EventQuery().get();
  test('should store all incoming events', () {
    expect(events.length, 75);
  });
}
