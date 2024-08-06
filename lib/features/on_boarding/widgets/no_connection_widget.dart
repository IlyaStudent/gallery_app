part of '../on_boarding_part.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(StringConsts.errorLogoImage),
          Text(
            context.localization.sorry,
            style: context.theme.textTheme.labelMedium?.copyWith(
              color: AppColors.grey,
            ),
          ),
          Text(
            context.localization.noInternetConnection,
            style: context.theme.textTheme.bodySmall?.copyWith(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
