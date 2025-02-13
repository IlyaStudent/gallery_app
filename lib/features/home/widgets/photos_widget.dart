part of '../home_part.dart';

class PhotosWidget extends StatelessWidget {
  final bool? isNew;
  final bool? isPopular;
  final int? userId;
  final int crossAxisCount;
  final double axisSpacing;
  final ScrollController scrollController = ScrollController();

  PhotosWidget({
    super.key,
    this.isNew,
    this.isPopular,
    this.userId,
    this.crossAxisCount = 2,
    this.axisSpacing = 15,
  });

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent) {
          if (scrollController.position.pixels != 0) {
            context.readPhotosBloc.add(
              LoadPhotosEvent(
                isNew: isNew,
                isSwitch: false,
                isPopular: isPopular,
                userId: userId,
              ),
            );
          }
        }
      },
    );

    return BlocBuilder<PhotosBloc, PhotosState>(
      builder: (context, state) {
        bool isLoading = false;
        List<PhotoModel> photos = [];
        if (state is _PhotosLoading) {
          photos = state.oldPhotosList;
          isLoading = true;
        }
        if (state is _PhotosError || state is _PhotosEmpty) {
          photos = [];
          isLoading = false;
          return Center(
            child: CustomErrorWidget(
              text: context.localization.noPictures,
            ),
          );
        } else if (state is _PhotosLoaded) {
          photos = state.photosListModel.member;
          isLoading = false;
        }
        return Column(children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              controller: scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: axisSpacing,
                crossAxisSpacing: axisSpacing,
              ),
              itemCount: photos.length + (isLoading ? crossAxisCount : 0),
              itemBuilder: (context, index) {
                if (index < photos.length) {
                  return PhotoWidget(
                    photoModel: photos[index],
                  );
                } else {
                  return const SizedBox(
                    height: 10,
                  );
                }
              },
            ),
          ),
          if (isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CustomLoader(
                color: AppColors.grey,
              ),
            )
        ]);
      },
    );
  }
}
