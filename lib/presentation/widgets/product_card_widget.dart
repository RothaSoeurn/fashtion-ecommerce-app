import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: scaleFontSize(appSpace)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageNetWorkWidget(
            fit: BoxFit.cover,
            imageUrl:
                'https://img.freepik.com/free-photo/black-woman-trendy-grey-leather-jacket-posing-beige-background-studio-winter-autumn-fashion-look_273443-141.jpg',
            width: scaleFontSize(150),
            height: scaleFontSize(200),
            isNotRounding: true,
          ),
          SizedBox(height: scaleFontSize(5)),
          Text(
            '21WN reversible',
            style: TextStyle(
              fontSize: scaleFontSize(16),
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '\$120',
            style: TextStyle(
                fontSize: scaleFontSize(16),
                color: Theme.of(context).primaryColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
