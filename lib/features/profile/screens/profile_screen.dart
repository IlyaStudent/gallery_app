part of '../profile_part.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomFilledButton(
        onPressed: () {
          FlutterSecureStorage().deleteAll();
          context.router.replace(OnBoardingRoute());
        },
        text: "Log out",
        isLoading: false,
        isDisabled: false,
      )),
    );
  }
}
