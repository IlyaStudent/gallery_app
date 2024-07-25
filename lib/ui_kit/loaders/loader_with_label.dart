part of '../ui_library.dart';

class LoaderWithLabel extends StatelessWidget {
  const LoaderWithLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularIndicatorConsts.greyCircularIndicator,
        Padding(
          padding: PaddingConsts.padding16,
          child: Text(
            "Loading...",
            style: AppFontsStyles.paragraph.copyWith(color: AppColors.grey),
          ),
        )
      ],
    );
  }
}
