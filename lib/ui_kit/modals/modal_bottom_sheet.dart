part of '../ui_library.dart';

class ModalBottomSheet {
  final String fistActionText;
  final Function() firstAction;
  final String secondActionText;
  final Function() secondAction;

  ModalBottomSheet({
    required this.fistActionText,
    required this.firstAction,
    required this.secondActionText,
    required this.secondAction,
  });

  void showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: firstAction,
            child: Text(
              fistActionText,
              style: AppFontsStyles.blueText,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: secondAction,
            child: Text(
              secondActionText,
              style: AppFontsStyles.blueText,
            ),
          ),
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: AppFontsStyles.blueText,
            ),
          ),
        ],
      ),
    );
  }
}
