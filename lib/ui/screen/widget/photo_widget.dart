import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoWidget extends StatelessWidget {
  final ImageProvider? image;

  const PhotoWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PhotoView(
              imageProvider: image,
              loadingBuilder: (context, progress) => Center(
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(
                    value:
                        progress == null || progress.expectedTotalBytes == null
                            ? null
                            : progress.cumulativeBytesLoaded /
                                progress.expectedTotalBytes!,
                  ),
                ),
              ),
              backgroundDecoration: BoxDecoration(color: Colors.black),
              gaplessPlayback: false,
              customSize: MediaQuery.of(context).size,
              enableRotation: true,
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 1.8,
              initialScale: PhotoViewComputedScale.contained,
              basePosition: Alignment.center,
            ),
          ),
          Positioned(
            top: 24,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.close),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
