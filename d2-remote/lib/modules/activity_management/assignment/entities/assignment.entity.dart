import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
import 'package:d2_remote/modules/metadata/organisation_unit/entities/organisation_unit.entity.dart';
import 'package:d2_remote/modules/activity_management/team/entities/team.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'assignment', apiResourceName: 'assignments')
class Assignment extends IdentifiableEntity {
  @ManyToOne(table: Activity, joinColumnName: 'activity')
  dynamic activity;

  @ManyToOne(table: Team, joinColumnName: 'team')
  dynamic team;

  @ManyToOne(table: OrganisationUnit, joinColumnName: 'organisationUnit')
  dynamic organisationUnit;

  @Column(nullable: true)
  String? startDate;

  @Column(type: ColumnType.TEXT)
  String? status;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? targetSource;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? startPeriod;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? period;

  @Column(type: ColumnType.TEXT, nullable: true)
  String? periodType;

  Assignment(
      {required String id,
      String? created,
      String? lastUpdated,
      String? name,
      String? shortName,
      String? code,
      String? displayName,
      this.activity,
      this.organisationUnit,
      this.team,
      this.startDate,
      this.status,
      this.startPeriod,
      this.period,
      this.periodType,
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

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
        id: json['id'],
        name: json['name'],
        created: json['created'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        activity: json['activity'],
        organisationUnit: json['organisationUnit'],
        team: json['team'],
        startDate: json['startDate'],
        status: json['status'],
        startPeriod: json['startPeriod'],
        period: json['period'],
        periodType: json['periodType'],
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
    data['activity'] = this.activity;
    data['organisationUnit'] = this.organisationUnit;
    data['team'] = this.team;
    data['startDate'] = this.startDate;
    data['status'] = this.status;
    data['startPeriod'] = this.startPeriod;
    data['period'] = this.period;
    data['periodType'] = this.periodType;
    data['dirty'] = this.dirty;
    return data;
  }
}
