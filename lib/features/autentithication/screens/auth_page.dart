part of '../autentithication_part.dart';

@RoutePage()
class AuthPage extends StatefulWidget implements AutoRouteWrapper {
  const AuthPage({
    super.key,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthorizationBloc(
        authentithicationRepository: instance(),
        tokenSecureStorage: instance(),
        storage: instance(),
      ),
      child: this,
    );
  }
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthorizationBloc, AuthorizationState>(
      listener: (context, state) {
        if (state is _AuthorizationAuthorizedState) {
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
                      text: context.localization.signIn,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (state is _AuthorizationInitialState &&
                                    state.erorMessage != null)
                                ? state.erorMessage!
                                : StringConsts.emptyString,
                            style: context.theme.textTheme.bodySmall
                                ?.copyWith(color: AppColors.errorRed),
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                          CustomTextField(
                            hintText: context.localization.email,
                            suffixIcon: Icons.mail_outline,
                            enabled: state is! _AuthorizationLoadingState,
                            controller: _emailController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomPasswordField(
                            hintText: context.localization.password,
                            enabled: state is! _AuthorizationLoadingState,
                            controller: _passwordController,
                          )
                        ],
                      ),
                    ),
                    CustomFilledButton(
                      onPressed: () => context.readAuthorizationBloc
                        ..add(
                          AuthorizeEvent(
                            loginDTO: LoginDTO(
                              username: _emailController.text,
                              password: _passwordController.text,
                            ),
                          ),
                        ),
                      text: context.localization.signIn,
                      isLoading: false,
                      isDisabled: (state is _AuthorizationLoadingState),
                    ),
                    CustomTextButton(
                      onPressed: () => context.router.replace(
                        const RegisterRoute(),
                      ),
                      text: context.localization.signUp,
                      isLoading: false,
                      isDisabled: (state is _AuthorizationLoadingState),
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
