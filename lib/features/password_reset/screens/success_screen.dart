part of '../password_reset_part.dart';

@RoutePage()
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localization.newPassword,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.deviceSize.height * 0.2,
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 32,
              ),
              child: Image.asset(
                StringConsts.strokeImage,
                height: 140,
                width: 140,
              ),
            ),
            Text(
              context.localization.congratulations,
              style: context.theme.textTheme.headlineLarge,
              maxLines: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 9,
              ),
              child: SizedBox(
                width: context.deviceSize.width * 0.7,
                child: Text(
                  context.localization.yourPasswordChanged,
                  style: context.theme.textTheme.labelMedium,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Expanded(
                child: CustomFilledButton(
                  onPressed: () => context.router.replaceAll(
                    [const ProfileRoute()],
                  ),
                  text: "Return to profile",
                  isLoading: false,
                  isDisabled: false,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
