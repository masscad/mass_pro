import 'package:d2_remote/modules/metadata/program/queries/program.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_rule.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_rule_action.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_rule_variable.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_section.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_section_attribute.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_stage.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_stage_data_element.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_stage_section.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_stage_section_data_element.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_tracked_entity_attribute.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/tracked_entity_attribute.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/tracked_entity_type_attribute.query.dart';

import 'queries/attribute_option.query.dart';
import 'queries/program_stage_data_element_option.query.dart';
import 'queries/tracked_entity_type.query.dart';

class ProgramModule {
  static createTables() async {
    await ProgramQuery().createTable();
    await ProgramStageQuery().createTable();
    await ProgramStageSectionQuery().createTable();
    await ProgramStageSectionDataElementQuery().createTable();
    await ProgramStageDataElementOptionQuery().createTable();
    await AttributeOptionQuery().createTable();
    await ProgramTrackedEntityAttributeQuery().createTable();
    await ProgramStageDataElementQuery().createTable();
    await ProgramRuleQuery().createTable();
    await ProgramRuleActionQuery().createTable();
    await ProgramRuleVariableQuery().createTable();
    await ProgramSectionQuery().createTable();
    await TrackedEntityAttributeQuery().createTable();
    await ProgramSectionAttributeQuery().createTable();
    await TrackedEntityTypeAttributeQuery().createTable();
    await TrackedEntityTypeQuery().createTable();
  }

  ProgramQuery get program => ProgramQuery();

  ProgramStageQuery get programStage => ProgramStageQuery();

  ProgramTrackedEntityAttributeQuery get programTrackedEntityAttribute =>
      ProgramTrackedEntityAttributeQuery();

  AttributeOptionQuery get attributeOption => AttributeOptionQuery();

  ProgramStageSectionQuery get programStageSection =>
      ProgramStageSectionQuery();

  ProgramStageDataElementQuery get programStageDataElement =>
      ProgramStageDataElementQuery();

  ProgramStageDataElementOptionQuery get programStageDataElementOption =>
      ProgramStageDataElementOptionQuery();

  ProgramRuleQuery get programRule => ProgramRuleQuery();

  ProgramRuleActionQuery get programRuleAction => ProgramRuleActionQuery();

  ProgramRuleVariableQuery get programRuleVariable =>
      ProgramRuleVariableQuery();

  ProgramSectionQuery get programSection => ProgramSectionQuery();

  ProgramSectionAttributeQuery get programSectionAttribute =>
      ProgramSectionAttributeQuery();

  TrackedEntityAttributeQuery get trackedEntityAttribute =>
      TrackedEntityAttributeQuery();

  TrackedEntityTypeAttributeQuery get trackedEntityTypeAttribute =>
      TrackedEntityTypeAttributeQuery();

  TrackedEntityTypeQuery get trackedEntityType =>
      TrackedEntityTypeQuery();
}
