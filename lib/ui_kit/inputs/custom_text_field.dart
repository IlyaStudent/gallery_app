part of '../ui_library.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final IconData? suffixIcon;
  final String hintText;
  final bool enabled;
  final bool isError;

  const CustomTextField({
    super.key,
    this.errorText,
    required this.hintText,
    this.suffixIcon,
    this.enabled = true,
    this.isError = false,
    this.controller,
    this.onChanged,
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
    return TextField(
      onChanged: onChanged,
      controller: controller,
      enabled: enabled,
      cursorColor: AppColors.black,
      style: context.theme.textTheme.labelMedium,
      decoration: InputDecoration(
        helperText: "",
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
