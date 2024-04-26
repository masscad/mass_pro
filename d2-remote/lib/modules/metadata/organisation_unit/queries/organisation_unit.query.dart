import 'package:d2_remote/modules/auth/user/entities/user_organisation_unit.entity.dart';
import 'package:d2_remote/modules/auth/user/queries/user_organisation_unit.query.dart';
import 'package:d2_remote/modules/metadata/organisation_unit/entities/organisation_unit.entity.dart';
import 'package:d2_remote/shared/models/request_progress.model.dart';
import 'package:d2_remote/shared/queries/base.query.dart';
import 'package:d2_remote/shared/utilities/http_client.util.dart';
import 'package:d2_remote/shared/utilities/query_filter.util.dart';
import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';

class OrganisationUnitQuery extends BaseQuery<OrganisationUnit> {
  OrganisationUnitQuery({Database? database}) : super(database: database);

  Future<List<OrganisationUnit>>? getUserOrgUnits() async {
    final List<UserOrganisationUnit> userOrgUnits =
        await UserOrganisationUnitQuery().get();

    final userOrgUnitIds =
        userOrgUnits.map((orgUnit) => orgUnit.orgUnit).toList();

    return this.byIds(userOrgUnitIds).get();
  }

  @override
  Future<List<OrganisationUnit>?> download(
      Function(RequestProgress, bool) callback,
      {Dio? dioTestClient}) async {
    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message: 'Fetching user assigned organisation units....',
            status: '',
            percentage: 0),
        false);

    final List<UserOrganisationUnit> userOrgUnits =
        await UserOrganisationUnitQuery().get();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${userOrgUnits.length} user assigned organisation units found!',
            status: '',
            percentage: 25),
        false);

    this.ilike(
        attribute: 'path',
        value: userOrgUnits.map((orgUnit) => orgUnit.orgUnit).toList());
    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                'Downloading ${this.apiResourceName?.toLowerCase()} from the server....',
            status: '',
            percentage: 26),
        false);

    final dhisUrl = await this.dhisUrl();

    final response = await HttpClient.get(dhisUrl,
        database: this.database, dioTestClient: dioTestClient);

    List data = response.body[this.apiResourceName]?.toList();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${data.length} ${this.apiResourceName?.toLowerCase()} downloaded successfully',
            status: '',
            percentage: 50),
        false);

    this.data = data.map((dataItem) {
      dataItem['dirty'] = false;
      return OrganisationUnit.fromJson(dataItem);
    }).toList();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                'Saving ${data.length} ${this.apiResourceName?.toLowerCase()} into phone database...',
            status: '',
            percentage: 51),
        false);

    await this.save();

    callback(
        RequestProgress(
            resourceName: this.apiResourceName as String,
            message:
                '${data.length} ${this.apiResourceName?.toLowerCase()} successfully saved into the database',
            status: '',
            percentage: 100),
        true);

    return this.data;
  }

  @override
  Future<String> dhisUrl() {
    final apiFilter =
    QueryFilter.getApiFilters(this.repository.columns, this.filters);
    return Future.value(
        'organisationUnits.json${apiFilter != null ? '?$apiFilter&' : '?'}fields=id,dirty,lastUpdated,created,name,displayName,shortName,code,level,path,externalAccess,openingDate,geometry,parent,ancestors[id,name,displayName,level,path,openingDate],closedDate,programs&paging=false');
  }
}
