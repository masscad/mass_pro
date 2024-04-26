import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dataelement', apiResourceName: 'dataElements')
class DataElement extends IdentifiableEntity {
  @Column(type: ColumnType.TEXT, nullable: true)
  String? formName;

  @Column(type: ColumnType.TEXT, length: 50)
  String valueType;

  @Column(type: ColumnType.TEXT, length: 50)
  String aggregationType;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? description;

  // NMC
  @Column(type: ColumnType.TEXT, nullable: true, length: 11)
  String? optionSet;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? fieldMask;
  //

  DataElement(
      {required String id,
      String? created,
      String? lastUpdated,
      required String name,
      required String shortName,
      String? code,
      String? displayName,
      this.formName,
      required this.aggregationType,
      this.description,
      required this.valueType,
      this.optionSet,
      this.fieldMask,
      required dirty})
      : super(
            id: id,
            name: name,
            shortName: shortName,
            displayName: displayName,
            code: code,
            created: created,
            lastUpdated: lastUpdated,
            dirty: dirty);

  factory DataElement.fromJson(Map<String, dynamic> json) {
    return DataElement(
        id: json['id'],
        name: json['name'],
        created: json['created'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        valueType: json['valueType'],
        aggregationType: json['aggregationType'],
        description: json['description'],
        formName: json['formName'],
        optionSet: json['optionSet']?['id'],
        fieldMask: json['fieldMask'],
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastUpdated'] = this.lastUpdated;
    data['id'] = this.id;
    data['created'] = this.created;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['valueType'] = this.valueType;
    data['aggregationType'] = this.aggregationType;
    data['description'] = this.description;
    data['formName'] = this.formName;
    data['optionSet'] = this.optionSet;
    data['fieldMask'] = this.fieldMask;
    data['dirty'] = this.dirty;

    return data;
  }
}
