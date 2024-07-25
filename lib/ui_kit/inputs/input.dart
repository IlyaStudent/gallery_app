part of '../ui_library.dart';

class Input extends StatelessWidget {
  final String? errorText;
  final Icon suffixIcon;
  final String hintText;
  final bool enabled;
  final bool isError;

  const Input({
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
      style: AppFontsStyles.paragraph,
      decoration: InputDecoration(
        suffixIcon: isError ? IconConsts.errorIcon : suffixIcon,
        hintText: hintText,
        hintStyle: enabled
            ? AppFontsStyles.paragraph.copyWith(
                color: AppColors.grey,
              )
            : AppFontsStyles.paragraph.copyWith(
                color: AppColors.greyLight,
              ),
        errorMaxLines: 1,
        errorText: errorText,
        errorStyle: AppFontsStyles.caption.copyWith(
          color: AppColors.errorRed,
        ),
        contentPadding: PaddingConsts.padding12,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyBorder,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyBorder,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.redBorder,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyLightBorder,
        ),
      ),
    );
  }
}
