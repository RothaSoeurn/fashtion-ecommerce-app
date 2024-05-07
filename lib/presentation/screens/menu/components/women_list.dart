import 'package:fashion_ecom_app/constants/size_config.dart';
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
        ))
      ],
    );
  }
}
