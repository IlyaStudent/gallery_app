part of '../on_boarding_part.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget implements AutoRouteWrapper {
  const OnBoardingPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(
        userRepository: instance(),
      )..getUser(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {
        if (state is _OnBoardingIsAuthorized && state.isAuthorized) {
          context.router.replace(
            const HomeRoute(),
          );
        } else if (state is _OnBoardingIsAuthorized && !state.isAuthorized) {
          context.router.replace(
            const LoginOrRegisterRoute(),
          );
        } else if (state is _OnBoardibgNoInternet) {
          const NoInternetWidget();
        }
      },
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CustomLoader(
              color: AppColors.grey,
            ),
          ),
        );
      },
    );
  }
}
