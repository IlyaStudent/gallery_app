part of '../ui_library.dart';

class CenterAlertDialog {
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

  final String title;
  final String text;
  final String btnText;

  CenterAlertDialog({
    required this.title,
    required this.text,
    required this.btnText,
    this.onConfirm,
    this.onCancel,
  });

  void showCenterAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          title,
          style: context.theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Text(
          text,
          style: context.theme.textTheme.labelMedium,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: onConfirm,
              child: Text(
                btnText,
                style: context.theme.textTheme.displayLarge?.copyWith(
                  color: AppColors.main,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onCancel,
            child: Text(
              context.localization.cancel,
              style: context.theme.textTheme.displayLarge?.copyWith(
                color: AppColors.main,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
