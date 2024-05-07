import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:flutter/material.dart';

class TitleSelectionWidget extends StatelessWidget {
  const TitleSelectionWidget({
    super.key,
    required this.title,
    required this.childs,
  });
  final String title;
  final Widget childs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scaleFontSize(20),
          ),
        ),
        SizedBox(height: scaleFontSize(5)),
        childs,
      ],
    );
  }
}
