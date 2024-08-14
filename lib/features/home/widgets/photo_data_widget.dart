part of '../home_part.dart';

class PhotoDataWidget extends StatelessWidget {
  const PhotoDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoDataCubit, PhotoDataState>(
      builder: (context, state) {
        if (state is _PhotoDataError) {
          return CustomErrorWidget(
            text: context.localization.noInternetConnection,
          );
        } else if (state is _PhotoDataLoaded) {
          String dateUpdate = (state.photoModel.file.dateUpdate != null)
              ? DateFormat('d.M.y')
                  .format(DateTime.parse(state.photoModel.file.dateUpdate!))
              : context.localization.emptyDate;
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.photoModel.name ?? context.localization.imageName,
                  style: themeData.textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        state.photoModel.user?.displayName ??
                            context.localization.userName,
                        style: themeData.textTheme.labelMedium
                            ?.copyWith(color: AppColors.grey),
                      ),
                      Text(
                        dateUpdate,
                        style: themeData.textTheme.bodySmall
                            ?.copyWith(color: AppColors.grey),
                      ),
                    ],
                  ),
                ),
                Text(
                  state.photoModel.description ?? StringConsts.emptyString,
                  style: themeData.textTheme.labelMedium,
                ),
              ],
            ),
          );
        }
        return const Center(
          child: CustomLoader(color: AppColors.grey),
        );
      },
    );
  }
}
