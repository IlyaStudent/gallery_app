part of '../autentithication_part.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
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
              Image.asset("lib/ui_kit/assets/logo.png"),
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 80),
                child: Text(
                  S.of(context).welcomeToGallery,
                  style: context.theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomFilledButton(
                  onPressed: () => context.router.pushNamed("/reg"),
                  text: S.of(context).createAnAccount,
                  isLoading: false,
                  isDisabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomOutlinedButton(
                    onPressed: () => context.router.pushNamed("/auth"),
                    text: S.of(context).iAlreadyHaveAnAccount,
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
