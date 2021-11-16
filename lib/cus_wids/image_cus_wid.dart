import 'package:flutter/material.dart';
import 'package:genfarm_appp/constants.dart';
import 'package:photo_view/photo_view.dart';

class ImageCusWid extends StatelessWidget {
  const ImageCusWid({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ClipRect(
        child: PhotoView(
          imageProvider: AssetImage(url),
          maxScale: PhotoViewComputedScale.covered * 2.0,
          minScale: PhotoViewComputedScale.contained * 0.8,
          initialScale: PhotoViewComputedScale.covered,
        ),
      ),
    );
  }
}
