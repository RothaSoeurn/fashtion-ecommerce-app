import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageNetWorkWidget extends StatelessWidget {
  const ImageNetWorkWidget({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width = 50,
    this.height = 50,
    this.isNotRounding = false,
  });

  final String imageUrl;
  final BoxFit fit;
  final double width;
  final double height;
  final bool isNotRounding;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: super.key,
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: isNotRounding ? null : appRadius,
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: isNotRounding ? null : BorderRadius.circular(10),
            color: Colors.grey[300], // Placeholder color
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: isNotRounding ? null : appRadius,
          image: DecorationImage(
            image: const AssetImage(errorImg),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
