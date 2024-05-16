import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewWidget extends StatefulWidget {
  const PhotoViewWidget({
    super.key,
    required this.images,
    required this.initialIndex,
  });
  final List images;
  final int initialIndex;
  @override
  State<PhotoViewWidget> createState() => _PhotoViewWidgetState();
}

class _PhotoViewWidgetState extends State<PhotoViewWidget> {
  int currentIndex = 1;
  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            itemCount: widget.images.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(widget.images[index]),
                initialScale: PhotoViewComputedScale.contained,
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            pageController: PageController(initialPage: widget.initialIndex),
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            scrollPhysics: const BouncingScrollPhysics(),
          ),
          Positioned(
            top: scaleFontSize(60),
            left: scaleFontSize(20),
            child: Material(
              shape: const RoundedRectangleBorder(borderRadius: appRadius),
              child: InkWell(
                radius: 8,
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: scaleFontSize(40),
                  height: scaleFontSize(40),
                  decoration: const BoxDecoration(
                    borderRadius: appRadius,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(scaleFontSize(appSpace)),
                    child: SvgPicture.asset(
                      arrowBackSvg,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: scaleFontSize(20),
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(scaleFontSize(15)),
                  decoration: const BoxDecoration(
                    color: primayColor,
                    borderRadius: appRadius,
                  ),
                  child: Text(
                    '$currentIndex/${widget.images.length - 1}',
                    style: TextStyle(
                      fontSize: scaleFontSize(18),
                      fontWeight: FontWeight.w600,
                      color: appWhite,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
