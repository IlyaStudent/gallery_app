part of '../ui_library.dart';

class CustomFABButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isDisabled;
  const CustomFABButton({
    super.key,
    required this.onPressed,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(AppColors.shadowColor),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(12),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
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
      child: isDisabled
          ? const Icon(
              Icons.add,
              size: 48,
              color: AppColors.grey,
            )
          : const Icon(
              Icons.add,
              size: 48,
              color: AppColors.white,
            ),
    );
  }
}
