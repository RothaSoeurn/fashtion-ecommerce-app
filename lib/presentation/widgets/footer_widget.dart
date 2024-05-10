import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          trans('Follow Us').toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(20),
            letterSpacing: scaleFontSize(7),
          ),
        ),
        SizedBox(height: scaleFontSize(15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(igSvg),
            SvgPicture.asset(twSvg),
            SvgPicture.asset(ytSvg),
          ],
        ),
        SizedBox(height: scaleFontSize(15)),
        Image.asset(deviderImg),
        SizedBox(height: scaleFontSize(15)),
        Text(
          'support@openui.design',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(16),
          ),
        ),
        SizedBox(height: scaleFontSize(5)),
        Text(
          '+60 825 876',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(16),
          ),
        ),
        SizedBox(height: scaleFontSize(5)),
        Text(
          '08:00 - 22:00 - Everyday',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(16),
          ),
        ),
        SizedBox(height: scaleFontSize(15)),
        Image.asset(deviderImg),
        SizedBox(height: scaleFontSize(16)),
      ],
    );
  }
}
