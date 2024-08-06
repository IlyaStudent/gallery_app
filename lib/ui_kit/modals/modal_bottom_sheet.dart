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
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.blue,
                  ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: secondAction,
            child: Text(
              secondActionText,
              style: context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.blue,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
