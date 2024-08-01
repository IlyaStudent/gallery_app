part of '../autentithication_part.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({
    super.key,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthorizationBloc>(),
      child: BlocBuilder<AuthorizationBloc, AuthorizationState>(
        builder: (context, state) {
          if (state is AuthorizedState) {
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
                        text: "Sign in",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (state is AuthorizationInitial &&
                                      state.erorMessage != null)
                                  ? state.erorMessage!
                                  : "",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: AppColors.errorRed),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                            CustomTextField(
                              hintText: "Email",
                              suffixIcon: Icons.mail_outline,
                              enabled: state is! AuthLoadingState,
                              controller: _emailController,
                            ),
                            CustomPasswordField(
                              hintText: "Password",
                              enabled: state is! AuthLoadingState,
                              controller: _passwordController,
                            )
                          ],
                        ),
                      ),
                      CustomFilledButton(
                        onPressed: () => context.read<AuthorizationBloc>()
                          ..add(
                            AuthorizeEvent(
                              loginModel: LoginModel(
                                username: _emailController.text,
                                password: _passwordController.text,
                              ),
                            ),
                          ),
                        text: "Sign In",
                        isLoading: false,
                        isDisabled: (state is AuthLoadingState),
                      ),
                      CustomTextButton(
                        onPressed: () => context.router.replaceNamed("/reg"),
                        text: "Sign Up",
                        isLoading: false,
                        isDisabled: (state is AuthLoadingState),
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
