part of '../profile_part.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProfileScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserDataCubit(
            userRepository: instance(),
            filesRepository: instance(),
          )..loadUserData(),
        ),
        BlocProvider(
          create: (context) => PhotosBloc(
            photosRepository: instance(),
          ),
        ),
        BlocProvider(
          create: (context) => PhotoCubit(
            filesRepository: instance(),
          ),
        )
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.grey,
            ),
          )
        ],
      ),
      body: const ProfileWidget(),
    );
  }
}
