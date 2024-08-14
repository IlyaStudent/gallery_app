part of '../profile_part.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomFilledButton(
        onPressed: () {},
        text: context.localization.logOut,
        isLoading: false,
        isDisabled: false,
      )),
    );
  }
}
