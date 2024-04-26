import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_stage.entity.dart';
import 'package:d2_remote/modules/metadata/program/entities/program_stage_data_element_option.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(
    tableName: 'programstagedataelement',
    apiResourceName: 'programStageDataElements')
class ProgramStageDataElement extends IdentifiableEntity {
  @Column(nullable: true)
  String? formName;

  @Column()
  String valueType;

  @Column()
  String dataElementId;

  @Column()
  String aggregationType;

  @Column()
  String domainType;

  @Column(nullable: true)
  String? description;

  @Column(nullable: true)
  String? displayDescription;

  @Column(nullable: true)
  String? displayFormName;

  @Column(nullable: true)
  bool? displayInReports;

  @Column(nullable: true)
  bool? renderOptionsAsRadio;

  @Column(nullable: true)
  bool? compulsory;

  @Column(nullable: true)
  int? sortOrder;

  @Column(nullable: true)
  bool? skipSynchronization;

  @Column(nullable: true)
  bool? allowFutureDate;

  @Column(nullable: true)
  bool? zeroIsSignificant;

  @Column(nullable: true)
  int? periodOffset;

  @ManyToOne(joinColumnName: 'programStage', table: ProgramStage)
  dynamic programStage;

  @Column(nullable: true)
  bool? optionSetValue;

  @Column(nullable: true)
  String? optionSetName;

  @OneToMany(table: ProgramStageDataElementOption)
  List<ProgramStageDataElementOption>? options;

  // NMCP
  @Column(nullable: true)
  String? renderType;

  ProgramStageDataElement(
      {required String id,
      String? created,
      String? lastUpdated,
      required String name,
      required String shortName,
      required this.dataElementId,
      String? code,
      String? displayName,
      this.displayDescription,
      this.formName,
      required this.aggregationType,
      this.description,
      this.programStage,
      this.displayFormName,
      this.displayInReports,
      this.renderOptionsAsRadio,
      this.compulsory,
      this.sortOrder,
      this.skipSynchronization,
      this.allowFutureDate,
      this.zeroIsSignificant,
      this.periodOffset,
      this.optionSetValue,
      this.optionSetName,
      this.options,
      required this.domainType,
      required this.valueType,
      this.renderType,
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

  factory ProgramStageDataElement.fromJson(Map<String, dynamic> json) {
    final renderType = json['renderType'] is String
        ? json['renderType']
        : json['renderType']?['MOBILE']?['type'];
    return ProgramStageDataElement(
        id: json['id'],
        name: json['name'],
        programStage: json['programStage'],
        created: json['created'],
        shortName: json['shortName'],
        formName: json['formName'],
        dataElementId: json['dataElementId'],
        code: json['code'],
        displayName: json['displayName'],
        displayDescription: json['displayDescription'],
        valueType: json['valueType'],
        aggregationType: json['aggregationType'],
        domainType: json['domainType'],
        displayInReports: json['displayInReports'],
        renderOptionsAsRadio: json['renderOptionsAsRadio'],
        compulsory: json['compulsory'],
        sortOrder: json['sortOrder'],
        skipSynchronization: json['skipSynchronization'],
        allowFutureDate: json['allowFutureDate'],
        description: json['description'],
        displayFormName: json['displayFormName'],
        zeroIsSignificant: json['zeroIsSignificant'],
        periodOffset: json['periodOffset'],
        optionSetValue: json['optionSetValue'],
        optionSetName: json['optionSetName'],
        options: List<dynamic>.from(
                json['options'] ?? json['optionSet']?['options'] ?? [])
            .map((option) => ProgramStageDataElementOption.fromJson({
                  ...option,
                  'id': '${option['id']}_${json['id']}}',
                  'programStageDataElement': json['id'],
                  'dirty': false
                }))
            .toList(),
        renderType: renderType,
        dirty: json['dirty']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastUpdated'] = this.lastUpdated;
    data['id'] = this.id;
    data['programStage'] = this.programStage;
    data['created'] = this.created;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['formName'] = this.formName;
    data['dataElementId'] = this.dataElementId;
    data['code'] = this.code;
    data['displayName'] = this.displayName;
    data['valueType'] = this.valueType;
    data['aggregationType'] = this.aggregationType;
    data['domainType'] = this.domainType;
    data['description'] = this.description;
    data['displayInReports'] = this.displayInReports;
    data['renderOptionsAsRadio'] = this.renderOptionsAsRadio;
    data['options'] = this.options;
    data['optionSetName'] = this.optionSetName;
    data['optionSetValue'] = this.optionSetValue;
    data['sortOrder'] = this.sortOrder;
    data['compulsory'] = this.compulsory;
    data['skipSynchronization'] = this.skipSynchronization;
    data['allowFutureDate'] = this.allowFutureDate;
    data['displayDescription'] = this.displayDescription;
    data['displayFormName'] = this.displayFormName;
    data['renderType'] = this.renderType;
    data['dirty'] = this.dirty;

    return data;
  }
}
