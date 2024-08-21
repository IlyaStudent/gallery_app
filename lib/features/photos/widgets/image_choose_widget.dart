part of '../photos_part.dart';

class ImageChooseWidget extends StatelessWidget {
  final Uint8List? imageData;
  const ImageChooseWidget({
    super.key,
    this.imageData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.readPostPhotoBloc.add(
        const _PhotoPostChoosePhoto(),
      ),
      child: Container(
        color: AppColors.greyLight,
        width: context.deviceSize.width,
        height: context.deviceSize.width - 32,
        child: Image.memory(
          imageData ?? Uint8List(0),
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => Image.asset(
            "lib/ui_kit/assets/no_image.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
