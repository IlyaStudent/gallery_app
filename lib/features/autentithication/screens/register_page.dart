part of '../autentithication_part.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  const RegisterPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (context) => RegistrationBloc(
        authentithicationRepository: instance(),
        tokenSecureStorage: instance(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state is _RegisteredState) {
          context.router.replaceAll([
            const NavBarRoute(),
          ]);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PageTitleWidget(
                      text: context.localization.signUp,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (state is _RegDataChecking &&
                                    state.regErrorDTO.regError != null)
                                ? state.regErrorDTO.regError!
                                : StringConsts.emptyString,
                            style: context.theme.textTheme.bodySmall
                                ?.copyWith(color: AppColors.errorRed),
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                          CustomTextField(
                            hintText: context.localization.username,
                            errorText: (state is _RegDataChecking)
                                ? state.regErrorDTO.displayName
                                : null,
                            suffixIcon: Icons.person,
                            enabled: (state is _RegDataChecking),
                            onChanged: (text) =>
                                context.readRegistrationBloc.add(
                              ChangeDataEvent(
                                changedFieldName: StringConsts.displayName,
                                changedFieldText: text,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomDateField(
                            hintText: context.localization.birthday,
                            errorText: (state is _RegDataChecking)
                                ? state.regErrorDTO.birthday
                                : null,
                            enabled: (state is _RegDataChecking),
                            onChanged: (text) =>
                                context.readRegistrationBloc.add(
                              ChangeDataEvent(
                                changedFieldName: StringConsts.birthday,
                                changedFieldText: text,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                              hintText: context.localization.email,
                              errorText: (state is _RegDataChecking)
                                  ? state.regErrorDTO.email
                                  : null,
                              suffixIcon: Icons.email_outlined,
                              enabled: (state is _RegDataChecking),
                              onChanged: (text) =>
                                  context.readRegistrationBloc.add(
                                    ChangeDataEvent(
                                      changedFieldName: StringConsts.email,
                                      changedFieldText: text,
                                    ),
                                  )),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomPasswordField(
                            hintText: context.localization.password,
                            errorText: (state is _RegDataChecking)
                                ? state.regErrorDTO.plainPassword
                                : null,
                            enabled: (state is _RegDataChecking),
                            onChanged: (text) =>
                                context.readRegistrationBloc.add(
                              ChangeDataEvent(
                                changedFieldName: StringConsts.plainPassword,
                                changedFieldText: text,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomPasswordField(
                            hintText: context.localization.confirmPassword,
                            errorText: (state is _RegDataChecking)
                                ? state.regErrorDTO.confirmPassword
                                : null,
                            enabled: (state is _RegDataChecking),
                            onChanged: (text) =>
                                context.readRegistrationBloc.add(
                              ChangeDataEvent(
                                changedFieldName: StringConsts.confirmPassword,
                                changedFieldText: text,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomFilledButton(
                      onPressed: () => context.readRegistrationBloc
                        ..add(
                          const RegisterEvent(),
                        ),
                      text: context.localization.signUp,
                      isLoading: false,
                      isDisabled: (state is _RegDataChecking)
                          ? !state.regErrorDTO.dataValid
                          : true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextButton(
                      onPressed: () =>
                          context.router.replace(const AuthRoute()),
                      text: context.localization.signIn,
                      isLoading: false,
                      isDisabled: (state is _RegLoadingState),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
