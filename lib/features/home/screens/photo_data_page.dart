part of '../home_part.dart';

@RoutePage()
class PhotoDataPage extends StatelessWidget implements AutoRouteWrapper {
  final int id;
  final Uint8List photoData;
  const PhotoDataPage({
    super.key,
    required this.id,
    required this.photoData,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            InteractiveViewer(
              child: Container(
                color: AppColors.greyLight,
                width: MediaQuery.sizeOf(context).width,
                child: Image.memory(
                  photoData,
                  fit: BoxFit.contain,
                  width: MediaQuery.sizeOf(context).width,
                  height: 400,
                ),
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: PhotoDataWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PhotoDataCubit(
            photosRepository: instance(),
          )..loadData(id),
        ),
      ],
      child: this,
    );
  }
}
