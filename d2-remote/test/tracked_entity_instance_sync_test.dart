import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/enrollment.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/event.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/event_data_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked-entity.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked_entity_attribute_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/enrollment.query.dart';
import 'package:d2_remote/modules/data/tracker/queries/event.query.dart';
import 'package:d2_remote/modules/data/tracker/queries/event_data_value.query.dart';
import 'package:d2_remote/modules/data/tracker/queries/tracked_entity_attribute_value.query.dart';
import 'package:d2_remote/modules/data/tracker/queries/tracked_entity_instance.query.dart';
import 'package:d2_remote/shared/utilities/orgunit_mode.util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'tracked_entity_instance_sync_test.reflectable.dart';

import '../sample/tracked_entity_instances.sample.dart';
import '../sample/current_user.sample.dart';

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
    'https://play.dhis2.org/2.35.11/api/trackedEntityInstances.json?ou=DiszpKrYNg8&ouMode=SELECTED&activity=ActzpKrYNg8&program=IpHINAT79UW&programStatus=ACTIVE&pageSize=50&order=created:desc&fields=*',
    (server) => server.reply(200, sampleTrackedEntityInstances),
  );

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['username'] = 'admin';
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.11';
  final user = User.fromApi(userData);
  await userQuery.setData(user).save();
  final trackedEntityInstanceQuery = TrackedEntityInstanceQuery(database: db);

  await trackedEntityInstanceQuery
      .byActivity('ActzpKrYNg8')
      .byOrgUnit('DiszpKrYNg8')
      .byProgram('IpHINAT79UW')
      .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<TrackedEntityInstance> trackedEntityInstances =
      await trackedEntityInstanceQuery.get();
  test('should store all incoming tracked entity instances', () {
    expect(trackedEntityInstances.length, 32);
  });

  List<Enrollment> enrollments = await EnrollmentQuery(database: db).get();
  test('should store all incoming enrollments', () {
    expect(enrollments.length, 34);
  });

  List<TrackedEntityAttributeValue> attributes =
      await TrackedEntityAttributeValueQuery(database: db).get();

  test('should store all incoming attributes', () {
    expect(attributes.length, 98);
  });

  List<Event> events = await EventQuery(database: db).get();

  test('should store all incoming events', () {
    expect(events.length, 67);
  });

  List<EventDataValue> eventDataValues =
      await EventDataValueQuery(database: db).get();

  test('should store all incoming event data values', () {
    expect(eventDataValues.length, 442);
  });

  await trackedEntityInstanceQuery
      .byActivity('ActzpKrYNg8')
      .byOrgUnit('DiszpKrYNg8')
      .byProgram('IpHINAT79UW')
      .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<TrackedEntityInstance> secondTrackedEntityInstances =
      await TrackedEntityInstanceQuery().get();
  test('should updated all incoming tracked entity instances', () {
    expect(secondTrackedEntityInstances.length, 32);
  });

  List<Enrollment> secondEnrollments =
      await EnrollmentQuery(database: db).get();
  test('should store all incoming enrollments', () {
    expect(secondEnrollments.length, 34);
  });

  List<TrackedEntityAttributeValue> secondAttributes =
      await TrackedEntityAttributeValueQuery(database: db).get();

  test('should store all incoming attributes', () {
    expect(secondAttributes.length, 98);
  });

  List<Event> secondEvents = await EventQuery(database: db).get();

  test('should store all incoming events', () {
    expect(secondEvents.length, 67);
  });

  List<EventDataValue> secondEventDataValues =
      await EventDataValueQuery(database: db).get();

  test('should store all incoming event data values', () {
    expect(secondEventDataValues.length, 442);
  });

  List<TrackedEntityInstance> trackedEntityInstancesByProgram =
      await TrackedEntityInstanceQuery()
          .byActivity('ActzpKrYNg8')
          .byOrgUnit('DiszpKrYNg8')
          .byProgram('IpHINAT79UW')
          .get();

  test(
      'should updated all tracked entity instances for selected program and orgunit',
      () {
    expect(trackedEntityInstancesByProgram.length, 32);
  });

  await TrackedEntityAttributeValueQuery()
      .setData(TrackedEntityAttributeValue.fromJson({
        ...secondAttributes[0].toJson(),
        "value": 'New Female',
        "dirty": true
      }))
      .save();

  final ulteredAttributeValue = await TrackedEntityAttributeValueQuery()
      .byId(secondAttributes[0].id as String)
      .getOne();

  await trackedEntityInstanceQuery
      .byActivity('ActzpKrYNg8')
      .byOrgUnit('DiszpKrYNg8')
      .byProgram('IpHINAT79UW')
      .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  final finalAttributeValue = await TrackedEntityAttributeValueQuery()
      .byId(secondAttributes[0].id as String)
      .getOne();

  test('should not change local latest local attribute value', () {
    expect(ulteredAttributeValue.value, finalAttributeValue.value);
  });

  dioAdapter.onGet(
    'https://play.dhis2.org/2.35.11/api/trackedEntityInstances.json?ou=ImspTQPwCqd&ouMode=SELECTED&activity=ActzpKrYNg8&program=IpHINAT79UW&programStatus=ACTIVE&pageSize=50&order=created:desc&fields=*',
    (server) => server.reply(200, sampleTrackedEntityInstances),
  );

  List<TrackedEntityInstance>? listByOrgUnits =
      await TrackedEntityInstanceQuery()
          .byActivity('ActzpKrYNg8')
          .byUserOrgUnit()
          .byProgram('IpHINAT79UW')
          .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  test(
      'should updated all incoming tracked entity instances given user organisation unit',
      () {
    expect(listByOrgUnits?.length, 32);
  });

  final enrollmentToUpdate = await EnrollmentQuery().getOne();

  enrollmentToUpdate?.status = 'COMPLETED';
  enrollmentToUpdate?.dirty = true;

  await EnrollmentQuery().setData(enrollmentToUpdate).save();

  test('should update enrollment details for selected tracked entity instance',
      () {
    expect(listByOrgUnits?.length, 32);
  });

  dioAdapter.onGet(
    'https://play.dhis2.org/2.35.11/api/trackedEntityInstances.json?ou=ImspTQPwCqd&ouMode=DESCENDANTS&program=IpHINAT79UW&programStatus=ACTIVE&pageSize=50&order=created:desc&fields=*',
    (server) => server.reply(200, sampleTrackedEntityInstances),
  );

  List<TrackedEntityInstance>? listByOuMode = await TrackedEntityInstanceQuery()
      .byUserOrgUnit()
      .byProgram('IpHINAT79UW')
      .withOuMode(OrgUnitMode.DESCENDANTS)
      .download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  test(
      'should updated all incoming tracked entity instances given user organisation unit',
      () {
    expect(listByOrgUnits?.length, 32);
  });
}
