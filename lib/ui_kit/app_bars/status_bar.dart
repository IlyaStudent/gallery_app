part of '../ui_library.dart';

class StatusBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final TextEditingController controller;
  const StatusBar({super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () => showSearch(
                context: context,
                delegate: CustomSearchDelegate(context),
              ),
              child: CustomSearchBar(
                controller: controller,
                isEnabled: false,
              ),
            )
          ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100);
}
