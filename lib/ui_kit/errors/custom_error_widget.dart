part of '../../features/on_boarding/on_boarding_part.dart';

class CustomErrorWidget extends StatelessWidget {
  final String text;
  const CustomErrorWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(StringConsts.errorLogoImage),
        Text(
          context.localization.sorry,
          style: context.theme.textTheme.labelMedium?.copyWith(
            color: AppColors.grey,
          ),
        ),
        Text(
          text,
          maxLines: 2,
          style: context.theme.textTheme.bodySmall?.copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
