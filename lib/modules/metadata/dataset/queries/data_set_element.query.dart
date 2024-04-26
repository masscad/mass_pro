import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/core/utilities/repository.dart';
import 'package:d2_remote/modules/metadata/dataset/entities/data_set_element.entity.dart';
import 'package:d2_remote/modules/metadata/dataset/entities/data_set_element_option.entity.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sqflite/sqflite.dart';

class DataSetElementQuery extends BaseQuery<DataSetElement> {
  DataSetElementQuery({Database? database}) : super(database: database);

  DataSetElementQuery withOptions() {
    final dataElementOption = Repository<DataSetElementOption>();

    final Column? relationColumn = dataElementOption.columns.firstWhere(
        (column) =>
            column.relation?.referencedEntity?.tableName == this.tableName);

    if (relationColumn != null) {
      ColumnRelation relation = ColumnRelation(
          referencedColumn: relationColumn.relation?.attributeName,
          attributeName: 'options',
          primaryKey: this.primaryKey?.name,
          relationType: RelationType.OneToMany,
          referencedEntity: Entity.getEntityDefinition(
              AnnotationReflectable.reflectType(DataSetElementOption)
                  as ClassMirror),
          referencedEntityColumns: Entity.getEntityColumns(
              AnnotationReflectable.reflectType(DataSetElementOption)
                  as ClassMirror,
              false));

      this.relations.add(relation);
    }

    return this;
  }
}
