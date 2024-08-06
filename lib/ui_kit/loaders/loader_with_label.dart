part of '../ui_library.dart';

class LoaderWithLabel extends StatelessWidget {
  const LoaderWithLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomLoader(
          color: AppColors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 9,
            horizontal: 42,
          ),
          child: Text(
            "Loading...",
            style: context.theme.textTheme.labelMedium?.copyWith(
              color: AppColors.grey,
            ),
          ),
        )
      ],
    );
  }
}
