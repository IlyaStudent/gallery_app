part of '../home_part.dart';

class PhotoWidget extends StatelessWidget {
  final PhotoModel photoModel;
  const PhotoWidget({
    super.key,
    required this.photoModel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoCubit, PhotoState>(
      builder: (context, state) {
        Uint8List? photoData;
        if (!context.readPhotoCubit.isClosed) {
          context.readPhotoCubit.loadPhoto(photoModel.file.path);
        }

        if (state is _PhotoError) {
          return const Icon(Icons.error);
        } else if (state is _PhotoLoaded) {
          photoData = state.loadedPhotos[photoModel.file.path];
        } else if (state is _PhotoLoading) {
          photoData = state.oldPhotos[photoModel.file.path];
        }
        return (photoData != null)
            ? GestureDetector(
                onTap: () => context.router.push(
                  PhotoDataRoute(
                    id: photoModel.id,
                    photoData: photoData!,
                  ),
                ),
                child: Container(
                  height: 164,
                  width: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.solid,
                        color: AppColors.shadowColor,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.memory(
                      photoData,
                      height: 164,
                      width: 164,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            : Shimmer.fromColors(
                baseColor: AppColors.greyLight,
                highlightColor: AppColors.white,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.white),
                ),
              );
      },
    );
  }
}
