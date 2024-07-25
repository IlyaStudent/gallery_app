part of '../ui_library.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate()
      : super(
          searchFieldLabel: "Search",
          searchFieldDecorationTheme: InputDecorationTheme(
            contentPadding: PaddingConsts.inputPadding,
            hintStyle: AppFontsStyles.paragraph.copyWith(
              color: AppColors.hintSearchColor,
            ),
            filled: true,
            labelStyle: AppFontsStyles.caption,
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
        );

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: IconConsts.cancelIcon,
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          close(context, null);
        },
        child: Text(
          "Cancel",
          style: AppFontsStyles.paragraph.copyWith(color: AppColors.blue),
        ),
      ),
    );
  }

  @override
  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Результаты поиска для "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox();
  }
}
