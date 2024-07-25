part of '../ui_library.dart';

class NavBarConsts {
  static const List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(icon: IconConsts.homeIcon, label: "Home"),
    BottomNavigationBarItem(icon: IconConsts.cameraIcon, label: "Camera"),
    BottomNavigationBarItem(icon: IconConsts.profileIcon, label: "Profile"),
  ];

  static const IconThemeData selectedIconThemeData =
      IconThemeData(color: AppColors.main);
  static const IconThemeData unselectedIconThemeData =
      IconThemeData(color: AppColors.grey);
  static const sizeFromHeight = Size.fromHeight(kToolbarHeight + 100);
}
