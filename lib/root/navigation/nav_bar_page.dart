import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';

@RoutePage()
class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        PhotosRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => context.autoTabsRouter.setActiveIndex(index),
            currentIndex: context.tabsRouter.activeIndex,
            selectedItemColor: AppColors.main,
            unselectedItemColor: AppColors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: context.localization.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.photo_camera,
                ),
                label: context.localization.photos,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.account_circle,
                ),
                label: context.localization.profile,
              ),
            ],
          ),
        );
      },
    );
  }
}
