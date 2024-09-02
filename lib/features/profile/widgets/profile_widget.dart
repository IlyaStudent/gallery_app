part of '../profile_part.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataCubit, UserDataState>(
      builder: (context, state) {
        UserModel? userModel;
        Uint8List? userPhoto;
        if (state is _UserDataLoading) {
          return const Center(
            child: CustomLoader(
              color: AppColors.grey,
            ),
          );
        } else if (state is _UserDataError) {
          return CustomErrorWidget(
            text: context.localization.noInternetConnection,
          );
        } else if (state is _UserDataLoaded) {
          userModel = state.userModel;
          userPhoto = state.userPhoto;
          context.readPhotosBloc.add(
            LoadPhotosEvent(
              isSwitch: false,
              userId: userModel.id,
            ),
          );
        }

        return Column(
          children: [
            const Divider(
              color: AppColors.grey,
            ),
            UserDataWidget(
              userModel: userModel,
              userPhoto: userPhoto,
            ),
            const Divider(
              color: AppColors.grey,
            ),
            Expanded(
              child: PhotosWidget(
                userId: userModel?.id,
                crossAxisCount: 4,
                axisSpacing: 5,
              ),
            )
          ],
        );
      },
    );
  }
}
