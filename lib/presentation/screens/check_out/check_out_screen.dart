import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/box_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  static const String routeName = '/check-out';
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _commentCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        isBack: true,
        closeActions: false,
        title: trans('check_out'),
      ),
      body: _buildBody(),
      bottomSheet: _buildFooter(),
    );
  }

  ListView _buildBody() {
    return ListView(
      padding: EdgeInsets.all(scaleFontSize(appSpace)),
      children: [
        Text(
          trans('my_shopping_bug'),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(18),
          ),
        ),
        SizedBox(height: scaleFontSize(appSpace)),
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
                Text(
                  '${trans('size')} : XL',
                  style: TextStyle(
                    fontSize: scaleFontSize(14),
                  ),
                ),
                Text(
                  '${trans('color')} : Black',
                  style: TextStyle(
                    fontSize: scaleFontSize(14),
                  ),
                ),
                Text(
                  '${trans('quantity')} : 14',
                  style: TextStyle(
                    fontSize: scaleFontSize(14),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        Text(
          trans('delivery_address'),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(18),
          ),
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return BoxWidget(
                margin: EdgeInsets.symmetric(
                  vertical: scaleFontSize(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: scaleFontSize(14),
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                      style: TextStyle(
                        fontSize: scaleFontSize(12),
                      ),
                    ),
                  ],
                ));
          },
        ),
        Text(
          trans('payment_method'),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(18),
          ),
        ),
        Text(
          trans('comment'),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(18),
          ),
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        SizedBox(height: scaleFontSize(appSpace)),
        TextFormField(
          maxLines: 3,
          controller: _commentCtr,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(scaleFontSize(appSpace)),
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Row _buildRowText(
    String leftText,
    String rightText,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(
            fontSize: scaleFontSize(14),
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          rightText,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(14),
          ),
        ),
      ],
    );
  }

  Padding _buildFooter() {
    return Padding(
      padding: EdgeInsets.all(scaleFontSize(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRowText(trans('total'), '\$10.99'),
          _buildRowText(trans('save'), '\$0.00'),
          _buildRowText(trans('delivery_fee'), '\$0.00'),
          _buildRowText(trans('total_amount'), '\$10.99'),
          SizedBox(height: scaleFontSize(appSpace)),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                CheckoutScreen.routeName,
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  trans('place_order'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w600,
                    color: appWhite,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
