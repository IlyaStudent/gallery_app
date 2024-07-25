part of '../ui_library.dart';

class CustomTab extends StatelessWidget {
  final String text;
  const CustomTab({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: text,
    );
  }
}
