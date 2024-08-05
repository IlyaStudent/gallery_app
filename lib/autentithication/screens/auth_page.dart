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
        authentithicationRepository: sl<AuthentithicationRepository>(),
        storage: sl<FlutterSecureStorage>(),
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
    return BlocListener<AuthorizationBloc, AuthorizationState>(
      listener: (context, state) {
        if (state is _AuthorizationAuthorizedState) {
          context.router.replaceNamed("/home");
        }
      },
      child: BlocBuilder<AuthorizationBloc, AuthorizationState>(
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
                        text: S.of(context).signIn,
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
                                  : "",
                              style: context.theme.textTheme.bodySmall
                                  ?.copyWith(color: AppColors.errorRed),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                            CustomTextField(
                              hintText: S.of(context).email,
                              suffixIcon: Icons.mail_outline,
                              enabled: state is! _AuthorizationLoadingState,
                              controller: _emailController,
                            ),
                            CustomPasswordField(
                              hintText: S.of(context).password,
                              enabled: state is! _AuthorizationLoadingState,
                              controller: _passwordController,
                            )
                          ],
                        ),
                      ),
                      CustomFilledButton(
                        onPressed: () => context.read<AuthorizationBloc>()
                          ..add(
                            AuthorizeEvent(
                              loginDTO: LoginDTO(
                                username: _emailController.text,
                                password: _passwordController.text,
                              ),
                            ),
                          ),
                        text: S.of(context).signIn,
                        isLoading: false,
                        isDisabled: (state is _AuthorizationLoadingState),
                      ),
                      CustomTextButton(
                        onPressed: () => context.router.replaceNamed("/reg"),
                        text: S.of(context).signUp,
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
      ),
    );
  }
}
