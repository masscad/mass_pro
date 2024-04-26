import 'package:d2_remote/modules/data/tracker/entities/event.entity.dart';
import 'package:d2_remote/modules/data/tracker/entities/event_data_value.entity.dart';
import 'package:d2_remote/modules/data/tracker/queries/event.query.dart';
import 'package:d2_remote/modules/data/tracker/queries/event_data_value.query.dart';
import 'package:d2_remote/modules/engine/program_rule/models/event_rule_result.model.dart';
import 'package:d2_remote/modules/engine/shared/utilities/data_value_entities.util.dart';
import 'package:d2_remote/modules/engine/program_rule/utilities/program_rule_engine.util.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_rule.entity.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_rule_action.entity.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_rule_variable.entity.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_rule.query.dart';
import 'package:d2_remote/modules/metadata/program/queries/program_rule_variable.query.dart';
import 'package:queue/queue.dart';

class EventRuleEngine {
  static Future<EventRuleResult> execute(
      {required Event event,
      required String program,
      EventDataValue? changedEventDataValue}) async {
    List<ProgramRule> programRules = await ProgramRuleQuery()
        .withActions()
        .where(attribute: 'program', value: program)
        .get();

    List<ProgramRuleVariable> programRuleVariables =
        await ProgramRuleVariableQuery()
            .where(attribute: 'program', value: program)
            .get();

    List<EventDataValue> eventDataValues = await EventDataValueQuery()
        .where(attribute: 'event', value: event.id)
        .get();

    final dataValueEntities =
        DataValueEntities.fromEventDataValues(eventDataValues);

    List<ProgramRuleAction> programRuleActions = ProgramRuleEngine.execute(
        dataValueEntities: dataValueEntities,
        programRules: programRules,
        programRuleVariables: programRuleVariables);

    final queue = Queue(parallel: 50);
    num availableItemCount = 0;

    programRuleActions.forEach((programRuleAction) {
      if (programRuleAction.programRuleActionType == 'ASSIGN') {
        availableItemCount++;
        queue.add(() => EventDataValueQuery()
            .setData(EventDataValue(
                dirty: true,
                dataElement: programRuleAction.dataElement as String,
                event: event.id,
                value: programRuleAction.data as String))
            .save());
      }
    });

    if (availableItemCount == 0) {
      queue.cancel();
    } else {
      await queue.onComplete;
    }

    Event updatedEvent =
        await EventQuery().withDataValues().byId(event.id as String).getOne();

    return EventRuleResult(
        event: updatedEvent, programRuleActions: programRuleActions);
  }
}
