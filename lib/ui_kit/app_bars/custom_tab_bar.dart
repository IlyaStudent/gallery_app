part of '../ui_library.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> titles;
  const CustomTabBar({super.key, required this.titles});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: AppColors.main,
      indicatorColor: AppColors.main,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: titles.map((e) => CustomTab(text: e)).toList(),
    );
  }

  @override
  Size get preferredSize => NavBarConsts.sizeFromHeight;
}
