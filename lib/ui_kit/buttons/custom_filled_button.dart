part of '../ui_library.dart';

class CustomFilledButton extends StatelessWidget {
  final VoidCallback? onPressed;
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
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 42),
        child: isLoading
            ? const CustomLoader(color: AppColors.white)
            : Text(
                text,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: isDisabled ? AppColors.grey : AppColors.white,
                    ),
              ),
      ),
    );
  }
}
