part of '../ui_library.dart';

class CustomCachedImage extends StatelessWidget {
  final String? imageUrl;
  final bool isBig;
  const CustomCachedImage({
    super.key,
    required this.imageUrl,
    required this.isBig,
  });

  Widget _imageWidget(ImageProvider imageProvider) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(
          isBig ? 10 : 2,
        )),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: isBig ? 164 : 82,
      height: isBig ? 164 : 82,
      imageUrl: imageUrl ?? "lib/ui_kit/assets/no_image.png",
      imageBuilder: (context, imageProvider) {
        return _imageWidget(imageProvider);
      },
      placeholder: (context, url) {
        return const CustomLoader(color: AppColors.grey);
      },
      errorWidget: (context, url, error) {
        return _imageWidget(
          const AssetImage('lib/ui_kit/assets/no_image.png'),
        );
      },
    );
  }
}
