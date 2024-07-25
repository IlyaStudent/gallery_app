part of '../ui_library.dart';

class CustomFilledButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final bool isLoading;
  final bool isDisabled;
  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.isLoading,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (isLoading || isDisabled) ? null : onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: isDisabled
            ? MaterialStateProperty.all(AppColors.greyLight)
            : MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) =>
                    states.contains(MaterialState.pressed)
                        ? AppColors.main
                        : AppColors.black,
              ),
      ),
      child: Padding(
        padding: PaddingConsts.buttonPadding,
        child: isLoading
            ? CircularIndicatorConsts.whiteCircularIndicator
            : Text(
                text,
                style: AppFontsStyles.paragraph.copyWith(
                  color: isDisabled ? AppColors.grey : AppColors.white,
                ),
              ),
      ),
    );
  }
}
