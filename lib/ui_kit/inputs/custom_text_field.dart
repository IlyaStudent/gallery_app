part of '../ui_library.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final IconData? suffixIcon;
  final String hintText;
  final bool enabled;
  final bool isError;
  final int minLines;
  final String? initialValue;

  const CustomTextField({
    super.key,
    this.errorText,
    required this.hintText,
    this.suffixIcon,
    this.enabled = true,
    this.isError = false,
    this.controller,
    this.onChanged,
    this.minLines = 1,
    this.initialValue,
  });

  static final greyBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.grey,
    ),
  );
  static final blackBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.black,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      controller: controller,
      enabled: enabled,
      minLines: minLines,
      maxLines: minLines,
      cursorColor: AppColors.black,
      style: context.theme.textTheme.labelMedium,
      decoration: InputDecoration(
        helperText: StringConsts.emptyString,
        helperStyle: context.theme.textTheme.bodySmall?.copyWith(
          color: AppColors.errorRed,
          height: 0.1,
        ),
        suffixIcon: isError
            ? const Icon(
                Icons.warning,
                size: 24,
                color: AppColors.errorRed,
              )
            : Icon(
                suffixIcon,
                size: 24,
                color: AppColors.grey,
              ),
        hintText: hintText,
        hintStyle: enabled
            ? context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.grey,
              )
            : context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.greyLight,
              ),
        errorMaxLines: 1,
        errorText: errorText,
        errorStyle: context.theme.textTheme.bodySmall?.copyWith(
          color: AppColors.errorRed,
          height: 0.1,
        ),
        contentPadding: const EdgeInsets.all(12),
        border: greyBorder,
        focusedBorder: blackBorder,
        errorBorder: greyBorder,
        disabledBorder: greyBorder,
      ),
    );
  }
}
