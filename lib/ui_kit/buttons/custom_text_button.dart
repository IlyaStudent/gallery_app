part of '../ui_library.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final bool isDisabled;
  const CustomTextButton({
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
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColors.white,
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
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 42),
        child: isLoading
            ? const CustomLoader(color: AppColors.black)
            : Text(
                text,
                style: Theme.of(context).textTheme.displayLarge,
              ),
      ),
    );
  }
}
