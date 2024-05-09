import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/screens/account_delete/account_delete_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/address_book/address_book_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/auth/change_password_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/edit_profile/edit_profile_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/language/language_screen.dart';
import 'package:fashion_ecom_app/presentation/widgets/circle_image_network_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/title_selectioin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
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
        SizedBox(height: scaleFontSize(15)),
        TitleSelectionWidget(
          title: trans('my_account'),
          childs: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    EditProfileScreen.routeName,
                  );
                },
                title: Text(
                  trans('edit_profile'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ChangePasswordScreen.routeName,
                  );
                },
                title: Text(
                  trans('change_password'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AddressBookScreen.routeName,
                  );
                },
                title: Text(
                  trans('address_book'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: scaleFontSize(15)),
        TitleSelectionWidget(
          title: trans('my_shop'),
          childs: Column(
            children: [
              ListTile(
                onTap: () {
                  //TODO
                },
                title: Text(
                  trans('my_order'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
              ListTile(
                onTap: () {
                  //TODO
                },
                title: Text(
                  trans('my_wishlists'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: scaleFontSize(15)),
        TitleSelectionWidget(
          title: trans('other'),
          childs: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    LanguageScreen.routeName,
                  );
                },
                title: Text(
                  trans('language'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AccountDeleteScreen.routeName,
                  );
                },
                title: Text(
                  trans('account_deletion'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: SvgPicture.asset(
                  arrowRightSvg,
                  width: scaleFontSize(15),
                ),
              ),
              ListTile(
                onTap: () {
                  //TODO
                },
                title: Text(
                  trans('logout'),
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
