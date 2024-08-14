part of '../photos_part.dart';

@RoutePage()
class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          StringConsts.photosLink,
        ),
      ),
    );
  }
}
