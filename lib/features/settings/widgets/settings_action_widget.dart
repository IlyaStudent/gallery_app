part of '../settings_part.dart';

class SettingsActionWidget extends StatelessWidget {
  const SettingsActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 78),
          child: GestureDetector(
            onTap: () => context.router.push(
              const PasswordResetRoute(),
            ),
            child: Text(
              context.localization.resetPassword,
              style: context.theme.textTheme.displayLarge?.copyWith(
                color: AppColors.main,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.localization.youCan,
              style: context.theme.textTheme.labelMedium,
            ),
            GestureDetector(
              onTap: () => context.readAccountSettingsBloc.add(
                const AccountSettingsEvent.showConfirm(
                  isDelete: true,
                ),
              ),
              child: Text(
                context.localization.deleteYourAccount,
                style: context.theme.textTheme.labelMedium?.copyWith(
                  color: AppColors.main,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: GestureDetector(
            onTap: () => context.readAccountSettingsBloc.add(
              const AccountSettingsEvent.showConfirm(
                isDelete: false,
              ),
            ),
            child: Text(
              context.localization.signOut,
              style: context.theme.textTheme.labelMedium?.copyWith(
                color: AppColors.main,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
