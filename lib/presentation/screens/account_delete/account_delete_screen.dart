import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/circle_image_network_widget.dart';
import 'package:flutter/material.dart';

class AccountDeleteScreen extends StatefulWidget {
  static const String routeName = '/account-delete';
  const AccountDeleteScreen({super.key});

  @override
  State<AccountDeleteScreen> createState() => _AccountDeleteScreenState();
}

class _AccountDeleteScreenState extends State<AccountDeleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        isBack: true,
        closeActions: true,
        title: trans('account_deletion'),
      ),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        child: ElevatedButton(
          onPressed: () {
            //TODO
          },
          child: Padding(
            padding: EdgeInsets.all(scaleFontSize(appSpace)),
            child: Text(
              trans('delete_my_account'),
              style: TextStyle(
                fontSize: scaleFontSize(16),
                fontWeight: FontWeight.w600,
                color: appWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }

  ListView _buildBody() {
    return ListView(
      padding: EdgeInsets.all(scaleFontSize(appSpace)),
      children: [
        CircleImageNetwork(
          imageUrl:
              'https://img.freepik.com/free-photo/smiley-handsome-man-posing_23-2148911841.jpg',
          width: scaleFontSize(130),
          height: scaleFontSize(130),
        ),
        Text(
          'Soeurn Rotha',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(20),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: scaleFontSize(20)),
        Text(
          trans('your_profile_delete'),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(14),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
