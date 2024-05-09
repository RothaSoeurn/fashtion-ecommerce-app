import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/box_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const String routeName = '/change-password';
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        isBack: true,
        closeActions: true,
        title: trans(''),
      ),
      body: _buildBody(),
    );
  }

  ListView _buildBody() {
    return ListView(
      padding: EdgeInsets.all(scaleFontSize(appSpace)),
      children: [
        Image.asset(
          forgetPassImg,
          width: scaleFontSize(200),
          height: scaleFontSize(200),
        ),
        Text(
          trans('forgot_password'),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(20),
          ),
        ),
        SizedBox(height: scaleFontSize(20)),
        Text(
          trans('plz_enter_phone'),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: scaleFontSize(14),
          ),
        ),
        SizedBox(height: scaleFontSize(20)),
        BoxWidget(
          padding: 20,
          margin: appSpace,
          child: Column(
            children: [
              IntlPhoneField(
                showDropdownIcon: false,
                disableAutoFillHints: false,
                disableLengthCheck: true,
                flagsButtonPadding: EdgeInsets.all(scaleFontSize(appSpace)),
                dropdownIconPosition: IconPosition.leading,
                decoration: InputDecoration(
                  labelText: trans('phone_no'),
                  contentPadding: EdgeInsets.all(scaleFontSize(appSpace)),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'KH',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(height: scaleFontSize(20)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    trans('Continue'),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: appWhite,
                      fontSize: scaleFontSize(16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
