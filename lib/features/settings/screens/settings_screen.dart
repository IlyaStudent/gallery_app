part of '../settings_part.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget implements AutoRouteWrapper {
  const SettingsScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserDataCubit(
            filesRepository: instance(),
            userRepository: instance(),
          )..loadUserData(),
        ),
        BlocProvider(
          create: (context) => AccountSettingsBloc(
            filesRepository: instance(),
            userRepository: instance(),
            tokenSecureStorage: instance(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.router.replace(
              const ProfileRoute(),
            ),
          ),
          title: Text(
            context.localization.settings,
            style: context.theme.textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: BlocBuilder<UserDataCubit, UserDataState>(
            builder: (context, state) {
              UserModel? userModel;
              Uint8List? userPhoto;
              AccountSettingsErrorModel accountSettingsErrorModel =
                  const AccountSettingsErrorModel();
              if (state is _UserDataLoading) {
                return SizedBox(
                  height: context.deviceSize.height,
                  child: const Center(
                    child: CustomLoader(
                      color: AppColors.grey,
                    ),
                  ),
                );
              } else if (state is _UserDataError) {
                return CustomErrorWidget(
                  text: context.localization.noInternetConnection,
                );
              } else if (state is _UserDataLoaded) {
                userModel = state.userModel;
                userPhoto = state.userPhoto;
              }

              return BlocConsumer<AccountSettingsBloc, AccountSettingsState>(
                listener: (context, state) {
                  if (state is _AccountSettingsLoaded) {
                    context.scaffoldMessanger.showSnackBar(
                      SnackBar(
                        backgroundColor: AppColors.grey,
                        content: SnackBarContent(
                          text: context.localization.dataSuccessfullyChanged,
                        ),
                      ),
                    );
                  } else if (state is _AccountSettingsVerifying &&
                      state.deleteConfirm != null) {
                    state.deleteConfirm!
                        ? CenterAlertDialog(
                            onConfirm: () =>
                                context.readAccountSettingsBloc.add(
                              AccountSettingsEvent.delete(
                                context: context,
                              ),
                            ),
                            onCancel: () => context.readAccountSettingsBloc.add(
                              AccountSettingsEvent.closeConfirm(
                                context: context,
                              ),
                            ),
                            title: context.localization.confirmation,
                            text:
                                context.localization.areYouSureYouWantToDelete,
                            btnText: context.localization.delete,
                          ).showCenterAlertDialog(context)
                        : CenterAlertDialog(
                            onConfirm: () =>
                                context.readAccountSettingsBloc.add(
                              AccountSettingsEvent.exit(
                                context: context,
                              ),
                            ),
                            onCancel: () => context.readAccountSettingsBloc.add(
                              AccountSettingsEvent.closeConfirm(
                                context: context,
                              ),
                            ),
                            title: context.localization.confirmation,
                            text: context.localization.areYouSureYouWantToExit,
                            btnText: context.localization.exit,
                          ).showCenterAlertDialog(context);
                  }
                },
                builder: (context, state) {
                  if (state is _AccountSettingsVerifying) {
                    userPhoto =
                        (state.postFileModel.file?.readAsBytesSync() != null)
                            ? state.postFileModel.file?.readAsBytesSync()
                            : userPhoto;
                    accountSettingsErrorModel = state.accountSetttingsErrorDTO;
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        PhotoWidget(
                          userPhoto: userPhoto,
                        ),
                        UserDataFormWidget(
                          userModel: userModel,
                          accountSettingsErrorModel: accountSettingsErrorModel,
                          isLoading: (state is _AccountSettingsLoading),
                        ),
                        const SettingsActionWidget(),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
