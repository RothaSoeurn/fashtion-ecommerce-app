import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/favorite_btn_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';

class ProductHorizonWidget extends StatelessWidget {
  const ProductHorizonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List sizes = ['M', 'S', 'L', 'XL'];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: scaleFontSize(appSpace)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ImageNetWorkWidget(
                fit: BoxFit.cover,
                imageUrl:
                    'https://img.freepik.com/free-photo/black-woman-trendy-grey-leather-jacket-posing-beige-background-studio-winter-autumn-fashion-look_273443-141.jpg',
                width: scaleFontSize(110),
                height: scaleFontSize(135),
                isNotRounding: true,
              ),
              Positioned(
                right: scaleFontSize(3),
                top: scaleFontSize(3),
                child: FavoriteBtnWidget(
                  onTap: () {
                    //TODO
                  },
                ),
              ),
            ],
          ),
          SizedBox(width: scaleFontSize(5)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lamerei',
                  style: TextStyle(
                    fontSize: scaleFontSize(14),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Recycle Boucle Knit Cardigan Pink',
                  style: TextStyle(
                    fontSize: scaleFontSize(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$120',
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w600,
                    color: primayColor,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: primayColor,
                      size: scaleFontSize(15),
                    ),
                    Text('4.8 Ratings'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      trans('sizes'),
                    ),
                    Wrap(
                      children: sizes.map((e) {
                        return Container(
                          width: scaleFontSize(25),
                          height: scaleFontSize(25),
                          margin: EdgeInsets.symmetric(
                            horizontal: scaleFontSize(4),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: inputBackgroundColor,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              e,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: scaleFontSize(12),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
