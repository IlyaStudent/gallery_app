import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/features/autentithication/autentithication_part.dart';
import 'package:gallery_app/features/home/home_part.dart';
import 'package:gallery_app/features/on_boarding/on_boarding_part.dart';
import 'package:gallery_app/features/password_reset/password_reset_part.dart';
import 'package:gallery_app/features/photos/photos_part.dart';
import 'package:gallery_app/features/profile/profile_part.dart';
import 'package:gallery_app/features/settings/settings_part.dart';
import 'package:gallery_app/root/navigation/nav_bar_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnBoardingRoute.page,
          path: StringConsts.onBoardingPath,
          initial: true,
        ),
        AutoRoute(
          page: LoginOrRegisterRoute.page,
          path: StringConsts.logOrRegPath,
        ),
        AutoRoute(
          page: AuthRoute.page,
          path: StringConsts.authPath,
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: StringConsts.regPath,
        ),
        AutoRoute(
          page: PhotoDataRoute.page,
          path: StringConsts.photoDataPath,
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: StringConsts.settingsPath,
        ),
        AutoRoute(
          page: PasswordResetRoute.page,
          path: StringConsts.passwordResetPath,
        ),
        AutoRoute(
          page: SuccessRoute.page,
          path: StringConsts.successScreenPath,
        ),
        AutoRoute(
          page: NavBarRoute.page,
          path: StringConsts.navBarPath,
          initial: false,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: StringConsts.homePath,
            ),
            AutoRoute(
              page: PhotosRoute.page,
              path: StringConsts.photosPath,
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: StringConsts.profilePath,
            ),
          ],
        ),
      ];
}
