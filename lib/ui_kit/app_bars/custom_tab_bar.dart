part of '../ui_library.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<int> onTap;
  final List<String> titles;
  const CustomTabBar({
    super.key,
    required this.titles,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: AppColors.main,
      indicatorColor: AppColors.main,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: titles.map((e) => CustomTab(text: e)).toList(),
      onTap: onTap,
    );
  }

  @override
  Size get preferredSize => NavBarConsts.sizeFromHeight;
}
