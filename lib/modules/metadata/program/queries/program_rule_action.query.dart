import 'package:d2_remote/modules/metadata/program/entities/program_rule_action.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:sqflite/sqflite.dart';

class ProgramRuleActionQuery extends BaseQuery<ProgramRuleAction> {
  ProgramRuleActionQuery({Database? database}) : super(database: database);
}
