part of '../ui_library.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate(BuildContext context)
      : super(
          searchFieldLabel: "Search",
          searchFieldDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 8,
            ),
            hintStyle: context.theme.textTheme.labelMedium?.copyWith(
              color: AppColors.hintSearchColor,
            ),
            filled: true,
            labelStyle: context.theme.textTheme.bodySmall,
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
        );

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(
            Icons.cancel,
            size: 24,
            color: AppColors.iconColor,
          ),
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
          style: context.theme.textTheme.labelMedium?.copyWith(
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }

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
