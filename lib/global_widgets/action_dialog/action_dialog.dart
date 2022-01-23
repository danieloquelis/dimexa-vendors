import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class ActionDialog {
  BuildContext? context;
  String title;
  String message;
  IconData? icon;
  Function onContinue;
  Function onCancel;

  ActionDialog({
    this.context,
    required this.title,
    required this.message,
    this.icon,
    required this.onContinue,
    required this.onCancel
  });

  Future<dynamic> showDialog() {
    return showCupertinoDialog(
      context: context!,
      builder: (context) => CupertinoAlertDialog(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.blue,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                title,
              ),
            ],
          ),
        ),
        content: Text(
          message,
        ),
        actions: [
          CupertinoDialogAction(
              child: const Text('Ahora No'),
              onPressed: () {
                onCancel();
              }
          ),
          CupertinoDialogAction(
              child: const Text('Ir a Ajustes'),
              onPressed: () {
                onContinue();
              }
          ),
        ],
      ),
    );
  }
}
