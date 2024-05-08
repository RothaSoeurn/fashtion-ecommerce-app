import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/product_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemFilterScreen extends StatefulWidget {
  static const String routeName = "/item-filter";
  const ItemFilterScreen({super.key});

  @override
  State<ItemFilterScreen> createState() => _ItemFilterScreenState();
}

class _ItemFilterScreenState extends State<ItemFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: ListView(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '4500 Apparel',
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: inputBackgroundColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    //
                  },
                  icon: SvgPicture.asset(gridSvg),
                ),
              ),
              Container(
                margin: EdgeInsets.all(scaleFontSize(appSpace)),
                decoration: const BoxDecoration(
                  color: inputBackgroundColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    //
                  },
                  icon: SvgPicture.asset(filterSvg),
                ),
              ),
            ],
          ),
          SizedBox(height: scaleFontSize(appSpace)),
          ProductBuilder(),
        ],
      ),
    );
  }
}
