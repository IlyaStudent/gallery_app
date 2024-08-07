import 'package:auto_route/auto_route.dart';
import 'package:gallery_app/features/autentithication/autentithication_part.dart';
import 'package:gallery_app/home/home_part.dart';
import 'package:gallery_app/features/on_boarding/on_boarding_part.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnBoardingRoute.page,
          path: "/onBoarding",
          initial: true,
        ),
        AutoRoute(
          page: LoginOrRegisterRoute.page,
          path: "/logOrReg",
        ),
        AutoRoute(
          page: AuthRoute.page,
          path: "/auth",
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: "/reg",
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: "/home",
        ),
      ];
}
