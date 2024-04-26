import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/metadata/program/entities/attribute_option.entity.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_tracked_entity_attribute.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

class ProgramTrackedEntityAttributeQuery
    extends BaseQuery<ProgramTrackedEntityAttribute> {
  ProgramTrackedEntityAttributeQuery({Database? database})
      : super(database: database);

  String? program;
  String? attribute;

  ProgramTrackedEntityAttributeQuery byTrackedEntityAttribute(String attribute) {
    this.attribute = attribute;
    return this.where(attribute: 'attribute', value: attribute);
  }

  ProgramTrackedEntityAttributeQuery byProgram(String program) {
    this.program = program;
    return this.where(attribute: 'program', value: program);
  }

  ProgramTrackedEntityAttributeQuery withOptions() {
    final attributeOption = Repository<AttributeOption>();

    final Column? relationColumn = attributeOption.columns.firstWhere(
        (column) =>
            column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'options',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(AttributeOption)
                  as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(AttributeOption) as ClassMirror,
              false));

      this.relations.add(relation);
    }

    return this;
  }
}
