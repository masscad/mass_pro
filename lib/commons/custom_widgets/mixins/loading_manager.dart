// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../form/ui/components/spinner_dialog.dart';

mixin LoadingManager {
  void handleLoading(BuildContext context, Stream<bool> stream) {
    stream.listen((isLoading) async {
      if (isLoading == true) {
        await showLoading(context);
      } else {
        hideLoading(context);
      }
    });
  }
}
