import 'package:d2_remote/d2_remote.dart';
import 'package:d2_remote/modules/auth/user/entities/user.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user.query.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_stage.entity.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_stage.query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'program_stage_sync_test.reflectable.dart';
import '../sample/current_user.sample.dart';
import '../sample/program_stage.sample.dart';

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
    'https://play.dhis2.org/2.35.11/api/programStages.json?fields=id,dirty,lastUpdated,created,name,displayName,shortName,code,sortOrder,executionDateLabel,description,formType,blockEntryForm,hideDueDate,repeatable,allowGenerateNextVisit,minDaysFromStart,generatedByEnrollmentDate,autoGenerateEvent,captureCoordinates,featureType,dueDateLabel,programStageSections[id,dirty,lastUpdated,created,name,displayName,shortName,code,formName,description,sortOrder,renderType,dataElements[id,dirty,lastUpdated,created,dataElement,programStageSection],programStage],program,programStageDataElements[id,dirty,lastUpdated,created,name,displayName,shortName,code,formName,valueType,dataElementId,aggregationType,domainType,description,displayDescription,displayFormName,displayInReports,renderOptionsAsRadio,compulsory,sortOrder,skipSynchronization,allowFutureDate,zeroIsSignificant,periodOffset,programStage,optionSetValue,optionSetName,options[id,dirty,lastUpdated,created,name,displayName,shortName,code,programStageDataElement],renderType],reportDateToUse,periodType,openAfterEnrollment&paging=false',
    (server) => server.reply(200, sampleProgramStages),
  );

  userData['password'] = 'district';
  userData['isLoggedIn'] = true;
  userData['username'] = 'admin';
  userData['baseUrl'] = 'https://play.dhis2.org/2.35.11';
  final user = User.fromApi(userData);
  await userQuery.setData(user).save();
  final programStageQuery = ProgramStageQuery(database: db);

  await programStageQuery.download((progress, complete) {
    print(progress.message);
  }, dioTestClient: dio);

  List<ProgramStage> programStages = await programStageQuery.get();

  test('should download and store all incoming program stage metadata', () {
    expect(programStages.length, 2);
  });
}
