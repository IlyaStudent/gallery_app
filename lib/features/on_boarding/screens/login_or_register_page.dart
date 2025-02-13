part of '../on_boarding_part.dart';

@RoutePage()
class LoginOrRegisterPage extends StatelessWidget {
  const LoginOrRegisterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(StringConsts.logoImage),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 80),
                child: Text(
                  context.localization.welcomeToGallery,
                  style: context.theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomFilledButton(
                  onPressed: () =>
                      context.router.pushNamed(StringConsts.regPath),
                  text: context.localization.createAnAccount,
                  isLoading: false,
                  isDisabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomOutlinedButton(
                    onPressed: () =>
                        context.router.pushNamed(StringConsts.authPath),
                    text: context.localization.iAlreadyHaveAnAccount,
                    isLoading: false,
                    isDisabled: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
