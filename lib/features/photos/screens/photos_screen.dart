part of '../photos_part.dart';

@RoutePage()
class PhotosScreen extends StatelessWidget implements AutoRouteWrapper {
  const PhotosScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotoPostBloc(
        photosRepository: instance(),
        filesRepository: instance(),
        userRepository: instance(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotoPostBloc, PhotoPostState>(
      listener: (BuildContext context, PhotoPostState state) {
        if (state is _PhotoPostStateLoaded) {
          context.scaffoldMessanger.showSnackBar(
            SnackBar(
              backgroundColor: AppColors.grey,
              content: SnackBarContent(
                text: context.localization.photoUploadedSuccessfully,
              ),
            ),
          );
          context.router.replace(const NavBarRoute());
          context.autoTabsRouter.setActiveIndex(0);
        }
      },
      builder: (context, state) {
        Uint8List? photoData;
        bool? nameCorrect;
        bool? isNew;
        bool? isPopular;
        bool isLoading = false;
        bool isValid = false;

        if (state is _PhotoPostStateVerifying) {
          photoData = state.postFileModel.file?.readAsBytesSync();
          nameCorrect = state.postPhotoErrorDTO.nameCorrect;
          isNew = state.postPhotoDTO.isNew;
          isPopular = state.postPhotoDTO.isPopular;
          isValid = state.postPhotoErrorDTO.isValid;
        } else if (state is _PhotoPostStateLoading) {
          isLoading = true;
        }
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.arrow_back),
            title: Text(
              context.localization.newPhoto,
              style: context.theme.textTheme.headlineMedium,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ImageChooseWidget(
                  imageData: photoData,
                ),
                PhotoFormWidget(
                  nameCorrect: nameCorrect,
                  isNew: isNew,
                  isPopular: isPopular,
                  isLoading: isLoading,
                  isValid: isValid,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
