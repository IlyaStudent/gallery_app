part of '../password_reset_part.dart';

@RoutePage()
class PasswordResetScreen extends StatelessWidget implements AutoRouteWrapper {
  const PasswordResetScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordResetBloc(
        userRepository: instance(),
        tokenSecureStorage: instance(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordResetBloc, PasswordResetState>(
      listener: (context, state) {
        state.maybeWhen(
          changed: () => context.router.replace(
            const SuccessRoute(),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              context.localization.newPassword,
            ),
          ),
          body: (state is! _PasswordResetVerifying)
              ? const Center(
                  child: CustomLoader(
                    color: AppColors.grey,
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          context.localization.enterYourNewPassword,
                          style: context.theme.textTheme.labelMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: CustomPasswordField(
                          errorText: (!state.passwordResetErorDTO.oldPassword)
                              ? context.localization.passwordIncorrect
                              : null,
                          hintText: context.localization.oldPassword,
                          onChanged: (text) =>
                              context.readPasswordResetBloc.add(
                            PasswordResetEvent.changeData(
                              changedFieldName: StringConsts.oldPassword,
                              changedFieldText: text,
                            ),
                          ),
                        ),
                      ),
                      CustomPasswordField(
                        errorText: (!state.passwordResetErorDTO.newPassword)
                            ? context.localization.passwordMustBe
                            : null,
                        hintText: context.localization.newPassword,
                        onChanged: (text) => context.readPasswordResetBloc.add(
                          PasswordResetEvent.changeData(
                            changedFieldName: StringConsts.newPassword,
                            changedFieldText: text,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: CustomPasswordField(
                          errorText:
                              (!state.passwordResetErorDTO.confirmPassword)
                                  ? context.localization.passwordsDoesntMatch
                                  : null,
                          hintText: context.localization.confirmPassword,
                          onChanged: (text) =>
                              context.readPasswordResetBloc.add(
                            PasswordResetEvent.changeData(
                              changedFieldName: StringConsts.confirmPassword,
                              changedFieldText: text,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomFilledButton(
                                onPressed: () =>
                                    context.readPasswordResetBloc.add(
                                  const PasswordResetEvent.confirm(),
                                ),
                                text: context.localization.confirm,
                                isLoading: (state is _PasswordResetLoading),
                                isDisabled: !state.passwordResetErorDTO.isValid,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        );
      },
    );
  }
}
