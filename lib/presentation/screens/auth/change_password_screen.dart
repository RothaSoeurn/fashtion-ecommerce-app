import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
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
        SizedBox(
          height: scaleFontSize(20),
        ),
        Container(
          padding: EdgeInsets.all(scaleFontSize(20)),
          margin: EdgeInsets.all(scaleFontSize(appSpace)),
          decoration: const BoxDecoration(
            borderRadius: appRadius,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(
                    100, 100, 111, 0.2), // Set shadow color with RGBA
                offset: Offset(0, 7), // Horizontal and vertical offset
                blurRadius: 29, // Blurriness of the shadow
                spreadRadius: 0, // Expansion of the shadow
              ),
            ],
          ),
          child: Column(
            children: [
              // TextFormField(
              //   keyboardType: TextInputType.phone,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     contentPadding: EdgeInsets.all(
              //       scaleFontSize(appSpace),
              //     ),
              //   ),
              // ),

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
