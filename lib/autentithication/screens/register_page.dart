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
        authentithicationRepository: sl<AuthentithicationRepository>(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state is _RegisteredState) {
          context.router.replaceNamed("/home");
        }
      },
      child: BlocBuilder<RegistrationBloc, RegistrationState>(
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
                        text: S.of(context).signUp,
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
                                  : "",
                              style: context.theme.textTheme.bodySmall
                                  ?.copyWith(color: AppColors.errorRed),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                            CustomTextField(
                              hintText: S.of(context).username,
                              errorText: (state is _RegDataChecking)
                                  ? state.regErrorDTO.displayName
                                  : null,
                              suffixIcon: Icons.person,
                              enabled: (state is _RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeDataEvent(
                                          changedFieldName: "displayName",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                            CustomDateField(
                              hintText: S.of(context).birthday,
                              errorText: (state is _RegDataChecking)
                                  ? state.regErrorDTO.birthday
                                  : null,
                              enabled: (state is _RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeDataEvent(
                                          changedFieldName: "birthday",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                            CustomTextField(
                                hintText: S.of(context).email,
                                errorText: (state is _RegDataChecking)
                                    ? state.regErrorDTO.email
                                    : null,
                                suffixIcon: Icons.email_outlined,
                                enabled: (state is _RegDataChecking),
                                onChanged: (text) =>
                                    context.read<RegistrationBloc>().add(
                                          ChangeDataEvent(
                                            changedFieldName: "email",
                                            changedFieldText: text,
                                          ),
                                        )),
                            CustomPasswordField(
                              hintText: S.of(context).password,
                              errorText: (state is _RegDataChecking)
                                  ? state.regErrorDTO.plainPassword
                                  : null,
                              enabled: (state is _RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeDataEvent(
                                          changedFieldName: "plainPassword",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                            CustomPasswordField(
                              hintText: S.of(context).confirmPassword,
                              errorText: (state is _RegDataChecking)
                                  ? state.regErrorDTO.confirmPassword
                                  : null,
                              enabled: (state is _RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeDataEvent(
                                          changedFieldName: "confirmPassword",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                          ],
                        ),
                      ),
                      CustomFilledButton(
                        onPressed: () => context.read<RegistrationBloc>().add(
                              const RegisterEvent(),
                            ),
                        text: S.of(context).signUp,
                        isLoading: false,
                        isDisabled: (state is _RegDataChecking)
                            ? !state.regErrorDTO.dataValid
                            : true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextButton(
                        onPressed: () => context.router.replaceNamed("/auth"),
                        text: S.of(context).signIn,
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
      ),
    );
  }
}
