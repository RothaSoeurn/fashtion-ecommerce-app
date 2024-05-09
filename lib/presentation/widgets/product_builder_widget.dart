import 'package:fashion_ecom_app/constants/constant.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/presentation/widgets/product_grid_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/product_horinzol_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder({
    super.key,
    this.displayType = DisplayType.vertical,
  });
  final DisplayType displayType;

  @override
  Widget build(BuildContext context) {
    if (displayType == DisplayType.vertical) {
      return MasonryGridView.count(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        crossAxisCount: 2,
        crossAxisSpacing: scaleFontSize(appSpace),
        mainAxisSpacing: scaleFontSize(appSpace),
        itemBuilder: (context, index) {
          return const ProductGridWidget();
        },
      );
    }

    return ListView.builder(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductHorizonWidget();
        });
  }
}
