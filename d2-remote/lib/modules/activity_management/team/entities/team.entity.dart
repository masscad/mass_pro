import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/activity_management/activity/entities/activity.entity.dart';
import 'package:d2_remote/modules/activity_management/assignment/entities/assignment.entity.dart';
import 'package:d2_remote/modules/activity_management/team/entities/team_group.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'team', apiResourceName: 'teams')
class Team extends IdentifiableEntity {
  @ManyToOne(table: Activity, joinColumnName: 'activity')
  dynamic activity;

  @ManyToOne(table: TeamGroup, joinColumnName: 'teamGroup')
  dynamic teamGroup;

  @OneToMany(table: Assignment)
  List<Assignment>? assignments;

  @Column(type: ColumnType.BOOLEAN)
  bool inactive;

  @Column(nullable: true)
  bool? synced;

  Team(
      {required String id,
      String? created,
      String? lastUpdated,
      required String name,
      required String shortName,
      String? code,
      String? displayName,
      this.activity,
      this.teamGroup,
      this.assignments,
      required this.inactive,
      this.synced,
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

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
        id: json['id'],
        name: json['name'],
        created: json['created'],
        shortName: json['shortName'],
        code: json['code'],
        displayName: json['displayName'],
        teamGroup: json['teamGroup'],
        activity: json['activity'],
        assignments: (json['assignments'] ?? [])
            .map<Assignment>((assignment) => Assignment.fromJson(
                {...assignment, 'team': json['id'], 'dirty': false}))
            .toList(),
        inactive: json['inactive'] ?? false,
        synced: json['synced'],
        dirty: json['dirty']);
  }

  factory Team.fromApi(Map<String, dynamic> jsonData) {
    return Team(
        id: jsonData['id'],
        name: jsonData['name'],
        created: jsonData['created'],
        shortName: jsonData['shortName'],
        code: jsonData['code'],
        displayName: jsonData['displayName'],
        teamGroup: jsonData['teamGroup'],
        activity: jsonData['activity'],
        inactive: jsonData['inactive'] ?? false,
        assignments: jsonData['assignments']
            .map<Assignment>((assignment) => Assignment.fromJson(
                {...assignment, 'team': jsonData['id'], 'dirty': false}))
            .toList(),
        dirty: jsonData['dirty'] ?? false);
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
    data['teamGroup'] = this.teamGroup;
    data['activity'] = this.activity;
    data['assignments'] = this.assignments;
    data['inactive'] = this.inactive;
    data['synced'] = this.synced;
    data['dirty'] = this.dirty;
    return data;
  }
}
