part of '../photos_part.dart';

class SnackBarContent extends StatelessWidget {
  final String text;
  const SnackBarContent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.info,
          color: AppColors.white,
        ),
        Text(
          text,
          style: context.theme.textTheme.headlineSmall?.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
