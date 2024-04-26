import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/data/tracker/entities/attribute_reserved_value.entity.dart';
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
import 'generate_tracked_entity_instance_test.reflectable.dart';

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

  final TrackedEntityInstance trackedEntityInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byActivity('ActzpKrYNg8')
      .byProgram('IpHINAT79UW')
      .byOrgUnit('fnei293faf')
      .create();

  final TrackedEntityInstance createdInstance = await D2Remote
      .trackerModule.trackedEntityInstance
      .byId(trackedEntityInstance.id as String)
      .withEnrollments()
      .withAttributes()
      .getOne();

  test('should return created tracked entity instance with generated values',
      () {
    expect(createdInstance.id, trackedEntityInstance.id);
    expect(createdInstance.orgUnit, 'fnei293faf');
    expect(
        (trackedEntityInstance.attributes ?? [])
            .lastWhere((attribute) => attribute.attribute == 'lZGmxYbs97q')
            .attribute,
        'lZGmxYbs97q');
    expect(createdInstance.enrollments?.length, 1);
  });
}
