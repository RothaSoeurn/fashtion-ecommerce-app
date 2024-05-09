import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  static const String routeName = '/language';
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        isBack: true,
        closeActions: true,
        title: trans('language'),
      ),
      body: ListView(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        children: [
          RadioListTile.adaptive(
            activeColor: secondaryColor,
            value: 'kh',
            groupValue: 'kh',
            onChanged: (vaule) {},
            title: Text(trans('khmer')),
          ),
          RadioListTile.adaptive(
            activeColor: secondaryColor,
            value: 'en',
            groupValue: 'en',
            onChanged: (vaule) {},
            title: Text(trans('english')),
          ),
        ],
      ),
    );
  }
}
