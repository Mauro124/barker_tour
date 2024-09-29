import 'package:flutter/material.dart';
import 'package:barker_tour/config/error_handlers/app_error.dart';
import 'package:barker_tour/presentation/widgets/shared/dialogs/error_dialog.dart';
import 'package:barker_tour/presentation/widgets/shared/dialogs/loading_dialog.dart';

class Dialogs {
  static void showLoadingDialog(BuildContext context, {String? message}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return LoadingDialog(message: message);
      },
    );
  }

  static void showErrorDialog(BuildContext context, dynamic message) {
    showDialog(
      context: context,
      builder: (context) {
        return ErrorDialog(message: (message as AppError).message!);
      },
    );
  }
}
