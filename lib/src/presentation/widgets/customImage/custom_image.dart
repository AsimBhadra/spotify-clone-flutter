part of widgets;

/// This class is used to create a custom image widget.
class CustomImage extends StatelessWidget {
  /// CustomImage Constructor
  const CustomImage({
    super.key,
    required this.imgUrl,
    required this.imageType,
    this.width = 200,
    this.height = 200,
  });

  /// imgUrl is the url of the image.
  final String imgUrl;

  /// imageType is the type of the image.
  final ImageType imageType;

  /// width is the width of the image.
  final double width;

  /// height is the height of the image.
  final double height;

  @override
  Widget build(BuildContext context) {
    if (imageType == ImageType.asset) {
      return ExtendedImage.asset(
        imgUrl,
        width: width,
        height: height,
      );
    } else {
      return const Text('Error');
    }
  }
}

/// ImageType enum
enum ImageType {
  /// ImageType.asset
  asset,

  /// ImageType.network
  network,
}
