part of '../ui_library.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final bool isEnabled;

  const CustomSearchBar(
      {super.key, required this.controller, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isEnabled,
      cursorColor: AppColors.black,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: PaddingConsts.inputPadding,
        prefixIcon: IconConsts.searchIcon,
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: IconConsts.cancelIcon,
                onPressed: () {
                  controller.clear();
                  (context as Element).markNeedsBuild();
                },
              )
            : null,
        hintStyle: AppFontsStyles.paragraph.copyWith(
          color: isEnabled
              ? AppColors.hintSearchColor
              : AppColors.hintDisabledSearchColor,
        ),
        hintText: 'Search',
        filled: true,
        fillColor: AppColors.greyLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyLightBorder,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyLightBorder,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyLightBorder,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderConsts.greyLightBorder,
        ),
      ),
      onChanged: (text) {
        (context as Element).markNeedsBuild();
      },
    );
  }
}
