import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/utilities/query_filter.util.dart';
import 'package:d2_remote/shared/utilities/query_model.util.dart';

class DhisUrlGenerator {
  static String generate(QueryModel? query) {
    if (query == null) {
      return '';
    }

    final apiFilter = query.filters != null
        ? QueryFilter.getApiFilters(query.columns, query.filters)
        : null;

    final apiFields = DhisUrlGenerator.getApiFields(query.columns);

    return '${query.resourceName}.json${apiFilter != null ? '?$apiFilter&' : '?'}fields=${apiFields.join(',')}&paging=false';
  }

  static List<String> getApiFields(List<Column> columns) {
    return columns.map((column) {
      if (column.relation?.relationType == RelationType.OneToMany) {
        final relationFields = DhisUrlGenerator.getApiFields(
            (column.relation?.referencedEntityColumns ?? []) as List<Column>);

        return '${column.name}[${relationFields.join(',')}]';
      }

      return column.name ?? '';
    }).toList();
  }

  static getRelationFields(relations) {
    return relations.map((relation) {
      // return `${relation.resourceName}[${[
      //   ...relation.fields,
      //   ...getRelationFields(relation.relations),
      // ].join(',')}]`;
    });
  }

  static getFilterParams(List<QueryFilter> queryFilters) {
    return queryFilters.map((QueryFilter filter) =>
        // `filter=${filter.attribute}:${filter.condition}:${sanitizeFilterValue(
        //   filter.value,
        //   filter.condition
        // )}`
        '').join('&');
  }

  static String sanitizeFilterValue(
      dynamic filterValue, String filterCondition) {
    switch (filterCondition) {
      // case QueryFilterCondition.IN:
      case '':
        // return `[${filterValue.join(',')}]`;
        return '';
      default:
        return filterValue;
    }
  }
}
