import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/circle_image_network_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileScreen extends StatefulWidget {
  static const String routeName = '/edit-profile';
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        isBack: true,
        title: trans('edit_profile'),
        closeActions: true,
      ),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        child: ElevatedButton(
          onPressed: () {
            //TODO
          },
          child: Text(
            trans('update'),
            style: TextStyle(
              fontSize: scaleFontSize(16),
              fontWeight: FontWeight.w600,
              color: appWhite,
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
        Center(
          child: Stack(
            children: [
              CircleImageNetwork(
                imageUrl:
                    'https://img.freepik.com/free-photo/smiley-handsome-man-posing_23-2148911841.jpg',
                width: scaleFontSize(130),
                height: scaleFontSize(130),
              ),
              Positioned(
                bottom: scaleFontSize(0),
                right: scaleFontSize(0),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: appWhite,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          color: inputBackgroundColor,
                        )
                      ]),
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                onTap: () {
                                  //TODO
                                },
                                leading: SvgPicture.asset(
                                  cameraSvg,
                                  width: scaleFontSize(25),
                                ),
                                title: Text(trans('camera')),
                              ),
                              ListTile(
                                onTap: () {
                                  //TODO
                                },
                                leading: SvgPicture.asset(
                                  albumsSvg,
                                  width: scaleFontSize(25),
                                ),
                                title: Text(trans('albums')),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: SvgPicture.asset(editSvg),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: scaleFontSize(20)),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(
                    scaleFontSize(appSpace),
                  ),
                  label: Text(
                    trans('first_name'),
                  ),
                ),
              ),
            ),
            SizedBox(width: scaleFontSize(appSpace)),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(
                    scaleFontSize(appSpace),
                  ),
                  label: Text(
                    trans('last_name'),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(
              scaleFontSize(appSpace),
            ),
            label: Text(
              trans('email'),
            ),
          ),
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(
              scaleFontSize(appSpace),
            ),
            label: Text(
              trans('phone_no'),
            ),
          ),
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(
              scaleFontSize(appSpace),
            ),
            label: Text(
              trans('address'),
            ),
          ),
        ),
      ],
    );
  }
}
