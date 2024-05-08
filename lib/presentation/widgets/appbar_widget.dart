import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          //TODO
        },
        icon: SvgPicture.asset(notificationSvg),
      ),
      title: Text(trans('Fashtion')),
      actions: [
        IconButton(
          onPressed: () {
            //TODO
          },
          icon: SvgPicture.asset(searchSvg),
        ),
        IconButton(
          onPressed: () {
            //TODO
          },
          icon: SvgPicture.asset(cartSvg),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(scaleFontSize(50));
}
