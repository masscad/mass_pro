import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/attribute_reserved_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/event.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/tracked-entity.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/attribute_reserved_value.query.dart';
import 'package:d2_remote/modules/metadata/program/entities/program.entity.dart';
import 'package:d2_remote/modules/metadata/program/queries/program.query.dart';
import 'package:d2_remote/modules/activity_management/project/entities/project.entity.dart';
import 'package:d2_remote/modules/activity_management/project/queries/project.query.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import '../sample/current_user.sample.dart';
import '../sample/program.sample.dart';
import '../sample/reserved_values.sample.dart';
import '../sample/project.sample.dart';
import 'generate_event_test.reflectable.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
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

  List<Program> programs = [];
  samplePrograms['programs'].forEach((program) {
    programs.add(Program.fromJson({...program, 'dirty': false}));
  });

  await ProgramQuery().setData(programs).save();

  // NMCP /////////
  List<Project> projects = [];
  sampleProjects['projects'].forEach((project) {
    projects.add(Project.fromJson({...project, 'dirty': false}));
  });

  await ProjectQuery().setData(projects).save();
  //////////////////

  List<AttributeReservedValue> attributeResrvedValues = [];
  sampleReservedValues.forEach((reservedValue) {
    attributeResrvedValues.add(
        AttributeReservedValue.fromJson({...reservedValue, 'dirty': false}));
  });

  await AttributeReservedValueQuery().setData(attributeResrvedValues).save();

  await D2Remote.trackerModule.attributeReservedValue.get();

  final TrackedEntityInstance trackedEntityInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byActivity('ActzpKrYNg8')
      .byProgram('IpHINAT79UW')
      .byOrgUnit('fnei293faf')
      .create();

  final TrackedEntityInstance createdInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byId(trackedEntityInstance.id as String)
      .getOne();

  final Event event = await D2Remote.trackerModule.event
      .byActivity('ActzpKrYNg8')
      .byProgramStage('A03MvHHogjR')
      .byOrgUnit('fnei293faf')
      .byEnrollment(trackedEntityInstance.enrollments?[0].enrollment as String)
      .create();

  final Event? createdEvent =
      await D2Remote.trackerModule.event.byId(event.id as String).getOne();

  test('should return created tracked entity instance with generated values',
      () {
    expect(createdInstance.id, trackedEntityInstance.id);
    expect(createdInstance.orgUnit, 'fnei293faf');
    expect(
        (trackedEntityInstance.attributes ?? [])
            .lastWhere((attribute) => attribute.attribute == 'lZGmxYbs97q')
            .attribute,
        'lZGmxYbs97q');
    expect(createdEvent?.id, event.id);
  });

  final Event eventWithoutEnrollment = await D2Remote.trackerModule.event
      .byProgramStage('A03MvHHogjR')
      .byActivity('ActzpKrYNg8')
      .byOrgUnit('fnei293faf')
      .create();

  final Event? createdEventWithoutEnrollment = await D2Remote.trackerModule.event
      .byId(eventWithoutEnrollment.id as String)
      .getOne();

  test('should return created event without enrollment', () {
    expect(createdEventWithoutEnrollment?.id, eventWithoutEnrollment.id);
  });
}
