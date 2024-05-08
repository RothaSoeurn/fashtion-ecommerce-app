import 'package:fashion_ecom_app/constants/constant.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
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
        itemCount: 4,
        crossAxisCount: 2,
        crossAxisSpacing: scaleFontSize(appSpace),
        mainAxisSpacing: scaleFontSize(appSpace),
        itemBuilder: (context, index) {
          return Column(
            children: [
              ImageNetWorkWidget(
                fit: BoxFit.cover,
                imageUrl:
                    'https://img.freepik.com/free-photo/black-woman-trendy-grey-leather-jacket-posing-beige-background-studio-winter-autumn-fashion-look_273443-141.jpg',
                width: double.infinity,
                height: scaleFontSize(200),
                isNotRounding: true,
              ),
              SizedBox(height: scaleFontSize(5)),
              Text(
                '21WN reversible angora cardigan',
                style: TextStyle(
                  fontSize: scaleFontSize(16),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '\$120',
                style: TextStyle(
                    fontSize: scaleFontSize(24),
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      );
    }
    return ListView.builder(itemBuilder: (context, index) {
      return Row();
    });
  }
}
