import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/box_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/cart';
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        closeActions: true,
        isBack: true,
        title: trans('carts'),
      ),
      body: ListView(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageNetWorkWidget(
                    isNotRounding: true,
                    imageUrl:
                        'https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    width: scaleFontSize(100),
                    height: scaleFontSize(135),
                  ),
                  SizedBox(width: scaleFontSize(5)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lamerei',
                        style: TextStyle(fontSize: scaleFontSize(14)),
                      ),
                      SizedBox(height: scaleFontSize(5)),
                      Text(
                        'Recycle Boucle Knit Cardigan Pink',
                        style: TextStyle(
                          fontSize: scaleFontSize(12),
                          color: appGrey,
                        ),
                      ),
                      SizedBox(height: scaleFontSize(5)),
                      Text(
                        '\$120',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: secondaryColor,
                          fontSize: scaleFontSize(16),
                        ),
                      ),
                      Row(
                        children: [
                          // Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              removeSvg,
                            ),
                          ),
                          SizedBox(width: scaleFontSize(3)),
                          Text(
                            '10',
                            style: TextStyle(
                              fontSize: scaleFontSize(15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: scaleFontSize(3)),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              addSvg,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                top: 0,
                right: scaleFontSize(5),
                child: GestureDetector(
                  onTap: () {
                    //TODO
                  },
                  child: SvgPicture.asset(
                    deleteSvg,
                    width: scaleFontSize(20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
