part of '../ui_library.dart';

class NavBarConsts {
  static const List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        size: 24,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.camera_alt,
        size: 24,
      ),
      label: "Camera",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle,
        size: 24,
      ),
      label: "Profile",
    ),
  ];

  static const IconThemeData selectedIconThemeData =
      IconThemeData(color: AppColors.main);
  static const IconThemeData unselectedIconThemeData =
      IconThemeData(color: AppColors.grey);
  static const sizeFromHeight = Size.fromHeight(kToolbarHeight + 100);
}
