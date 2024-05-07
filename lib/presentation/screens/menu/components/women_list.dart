import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:flutter/material.dart';

class WomenLists extends StatefulWidget {
  const WomenLists({super.key});

  @override
  State<WomenLists> createState() => _WomenListsState();
}

class _WomenListsState extends State<WomenLists> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: Text(
            'New',
            style: TextStyle(
              fontSize: scaleFontSize(20),
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: scaleFontSize(32),
                top: scaleFontSize(appSpace),
                bottom: scaleFontSize(appSpace),
              ),
              child: Row(
                children: [
                  Text(
                    'Testing',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: scaleFontSize(18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            'Apparel',
            style: TextStyle(
              fontSize: scaleFontSize(20),
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: scaleFontSize(32),
                top: scaleFontSize(appSpace),
                bottom: scaleFontSize(appSpace),
              ),
              child: Row(
                children: [
                  Text(
                    'Testing',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: scaleFontSize(18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
