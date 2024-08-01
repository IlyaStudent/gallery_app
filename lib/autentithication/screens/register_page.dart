part of '../autentithication_part.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (context) => sl<RegistrationBloc>(),
      child: BlocBuilder<RegistrationBloc, RegistrationState>(
        builder: (context, state) {
          if (state is RegisteredState) {
            context.router.replaceNamed("/home");
          }
          return SafeArea(
            child: Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const PageTitleWidget(
                        text: "Sign up",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (state is RegDataChecking &&
                                      state.regErrorModel.regError != null)
                                  ? state.regErrorModel.regError!
                                  : "",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: AppColors.errorRed),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                            CustomTextField(
                              hintText: "Username",
                              errorText: (state is RegDataChecking)
                                  ? state.regErrorModel.displayName
                                  : null,
                              suffixIcon: Icons.person,
                              enabled: (state is RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeRegDataEvent(
                                          changedFieldName: "displayName",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                            CustomDateField(
                              hintText: "Birthday",
                              errorText: (state is RegDataChecking)
                                  ? state.regErrorModel.birthday
                                  : null,
                              enabled: (state is RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeRegDataEvent(
                                          changedFieldName: "birthday",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                            CustomTextField(
                                hintText: "Email",
                                errorText: (state is RegDataChecking)
                                    ? state.regErrorModel.email
                                    : null,
                                suffixIcon: Icons.email_outlined,
                                enabled: (state is RegDataChecking),
                                onChanged: (text) =>
                                    context.read<RegistrationBloc>().add(
                                          ChangeRegDataEvent(
                                            changedFieldName: "email",
                                            changedFieldText: text,
                                          ),
                                        )),
                            CustomPasswordField(
                              hintText: "Password",
                              errorText: (state is RegDataChecking)
                                  ? state.regErrorModel.plainPassword
                                  : null,
                              enabled: (state is RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeRegDataEvent(
                                          changedFieldName: "plainPassword",
                                          changedFieldText: text,
                                        ),
                                      ),
                            ),
                            CustomPasswordField(
                              hintText: "Confirm password",
                              errorText: (state is RegDataChecking)
                                  ? state.regErrorModel.confirmPassword
                                  : null,
                              enabled: (state is RegDataChecking),
                              onChanged: (text) =>
                                  context.read<RegistrationBloc>().add(
                                        ChangeRegDataEvent(
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
                              RegisterEvent(),
                            ),
                        text: "Sign Up",
                        isLoading: false,
                        isDisabled: (state is RegDataChecking)
                            ? !state.regErrorModel.dataValid
                            : true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextButton(
                        onPressed: () => context.router.replaceNamed("/auth"),
                        text: "Sign In",
                        isLoading: false,
                        isDisabled: (state is RegLoadingState),
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
