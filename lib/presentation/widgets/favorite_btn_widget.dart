import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteBtnWidget extends StatelessWidget {
  const FavoriteBtnWidget({
    super.key,
    this.onTap,
    this.isFavorite = false,
    this.isLoading = false,
    this.height = 25,
    this.width = 25,
  });
  final VoidCallback? onTap;
  final bool isFavorite;
  final bool isLoading;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Container(
          width: scaleFontSize(width),
          height: scaleFontSize(height),
          padding: EdgeInsets.all(scaleFontSize(3)),
          child: isLoading
              ? SizedBox(
                  width: scaleFontSize(width),
                  height: scaleFontSize(height),
                  child: const CircularProgressIndicator.adaptive(
                    strokeWidth: 1.5,
                    backgroundColor: primayColor,
                  ),
                )
              : SvgPicture.asset(
                  isFavorite ? favFullSvg : favSvg,
                  colorFilter: ColorFilter.mode(
                    isFavorite ? appRed : appBlack,
                    BlendMode.srcIn,
                  ),
                ),
        ),
      ),
    );
  }
}
