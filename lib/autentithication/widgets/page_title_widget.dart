part of '../autentithication_part.dart';

class PageTitleWidget extends StatelessWidget {
  final String text;
  const PageTitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.gradientEnd,
            width: 2,
          ),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
