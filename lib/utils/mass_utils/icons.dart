import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../commons/constants.dart';
import '../../commons/utils/view_actions.dart';

IconData getViewActionIcon(ViewAction? viewAction) {
  switch (viewAction) {
    case ViewAction.list_view:
      return MdiIcons.viewList;
    case ViewAction.map_view:
      return Icons.map;
    case ViewAction.tasks:
      return Icons.task_outlined;
    case ViewAction.sync:
      return Icons.cloud_sync_outlined;
    case ViewAction.details:
      return Icons.details_outlined;
    case ViewAction.analytics:
      return Icons.analytics_outlined;
    case ViewAction.notes:
      return Icons.note_outlined;
    case ViewAction.data_entry:
      return Icons.dynamic_form_outlined;
    case ViewAction.relationships:
      return Icons.forward_5_outlined;
    case ViewAction.programs:
      return Icons.apps_outlined;
    default:
      return Icons.question_mark;
  }
}

// IconData getEntityIcon(EntityType? entityType) {
//   switch (entityType) {
//     case EntityType.chvMalariaCase:
//       return Icons.save;
//     case EntityType.settings:
//       return MdiIcons.cog;
//     case EntityType.chvStockMovement:
//       return MdiIcons.box;
//     default:
//       return MdiIcons.crosshairsQuestion;
//   }
// }

IconData? getFileTypeIcon(String type) {
  switch (type) {
    case 'pdf':
      return MdiIcons.filePdfBox;
    case 'psd':
      return MdiIcons.fileImage;
    case 'txt':
      return MdiIcons.file;
    case 'doc':
    case 'docx':
      return MdiIcons.fileWord;
    case 'xls':
    case 'xlsx':
      return MdiIcons.fileExcel;
    case 'ppt':
    case 'pptt':
      return MdiIcons.filePowerpoint;
    default:
      return null;
  }
}

IconData getSettingIcon(String section) {
  switch (section) {
    case kSettingsUserDetails:
      return Icons.person;
    // case kSettingsLocalization:
    //   return Icons.language;
    case kSettingsImportExport:
      return Icons.import_export;
    case kSettingsDeviceSettings:
      return Icons.settings;
    case kSettingsUserManagement:
      return Icons.people;
    case kSettingsAccountManagement:
      return MdiIcons.shieldAccount;
    default:
      return Icons.question_mark;
  }
}
