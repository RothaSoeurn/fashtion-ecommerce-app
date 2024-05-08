import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    this.isBack = false,
    this.title = 'Fashtion',
    this.closeActions = false,
  });
  final bool isBack;
  final String title;
  final bool closeActions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          //TODO
          if (isBack) {
            Navigator.pop(context);
          } else {
            //
          }
        },
        icon: SvgPicture.asset(isBack ? arrowBackSvg : notificationSvg),
      ),
      title: Text(title),
      actions: closeActions
          ? []
          : [
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
