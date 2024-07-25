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
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
        prefixIcon: const Icon(
          Icons.search,
          size: 24,
          color: AppColors.iconColor,
        ),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(
                  Icons.cancel,
                  size: 24,
                  color: AppColors.iconColor,
                ),
                onPressed: () {
                  controller.clear();
                  (context as Element).markNeedsBuild();
                },
              )
            : null,
        hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: isEnabled
                  ? AppColors.hintSearchColor
                  : AppColors.hintDisabledSearchColor,
            ),
        hintText: 'Search',
        filled: true,
        fillColor: AppColors.greyLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.greyLight,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.greyLight,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.greyLight,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.greyLight,
          ),
        ),
      ),
      onChanged: (text) {
        (context as Element).markNeedsBuild();
      },
    );
  }
}
