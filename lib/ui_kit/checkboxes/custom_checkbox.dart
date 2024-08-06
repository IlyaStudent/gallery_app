part of '../ui_library.dart';

class CustomCheckBox extends StatelessWidget {
  final String text;
  final bool value;
  final void Function(bool?)? onChanged;
  const CustomCheckBox({
    super.key,
    required this.text,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.black,
          fillColor: MaterialStateProperty.all(
            value ? AppColors.black : AppColors.white,
          ),
          side: const BorderSide(
            color: AppColors.black,
            width: 2,
          ),
        ),
        Text(
          text,
          style: context.theme.textTheme.labelMedium,
        )
      ],
    );
  }
}
