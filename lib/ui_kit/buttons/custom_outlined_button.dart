part of '../ui_library.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final bool isLoading;
  final bool isDisabled;
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.isLoading,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (isLoading || isDisabled) ? null : onPressed,
      style: ButtonStyle(
        side: isDisabled
            ? MaterialStateProperty.all<BorderSide>(
                BorderConsts.greyLightBorder,
              )
            : MaterialStateProperty.resolveWith<BorderSide>(
                (states) => BorderSide(
                  color: states.contains(MaterialState.pressed)
                      ? AppColors.main
                      : AppColors.black,
                ),
              ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        overlayColor: MaterialStateProperty.all(AppColors.white),
        foregroundColor: isDisabled
            ? MaterialStateProperty.all(AppColors.grey)
            : MaterialStateProperty.resolveWith(
                (states) => states.contains(MaterialState.pressed)
                    ? AppColors.main
                    : AppColors.black,
              ),
      ),
      child: Padding(
        padding: PaddingConsts.buttonPadding,
        child: isLoading
            ? CircularIndicatorConsts.blackCircularIndicator
            : Text(
                text,
                style: AppFontsStyles.paragraph,
              ),
      ),
    );
  }
}
