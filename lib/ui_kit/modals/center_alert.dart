part of '../ui_library.dart';

class CenterAlertDialog {
  final String title;
  final String text;

  CenterAlertDialog({required this.title, required this.text});

  void showCenterAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(
          title,
        ),
        content: Text(
          text,
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Exit',
              style: AppFontsStyles.blueText,
            ),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Confirm',
              style: AppFontsStyles.blueText,
            ),
          ),
        ],
      ),
    );
  }
}
