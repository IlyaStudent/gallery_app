part of '../ui_library.dart';

class CustomTextField extends StatelessWidget {
  final String? errorText;
  final Icon suffixIcon;
  final String hintText;
  final bool enabled;
  final bool isError;

  const CustomTextField({
    super.key,
    this.errorText,
    required this.hintText,
    required this.suffixIcon,
    this.enabled = true,
    this.isError = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      cursorColor: AppColors.black,
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        suffixIcon: isError
            ? const Icon(
                Icons.warning,
                size: 24,
                color: AppColors.errorRed,
              )
            : suffixIcon,
        hintText: hintText,
        hintStyle: enabled
            ? Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.grey,
                )
            : Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.greyLight,
                ),
        errorMaxLines: 1,
        errorText: errorText,
        errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.errorRed,
            ),
        contentPadding: const EdgeInsets.all(12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
