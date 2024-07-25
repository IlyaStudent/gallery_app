part of '../ui_library.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: AppColors.main,
      unselectedItemColor: AppColors.greyLight,
      selectedIconTheme: NavBarConsts.selectedIconThemeData,
      unselectedIconTheme: NavBarConsts.unselectedIconThemeData,
      items: NavBarConsts.navBarItems,
    );
  }
}
