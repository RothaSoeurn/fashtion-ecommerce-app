import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
    this.padding = 16,
    this.margin,
    required this.child,
  });
  final double padding;
  final EdgeInsets? margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: const BoxDecoration(
        borderRadius: appRadius,
        color: appWhite,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(100, 100, 111, 0.2),
            offset: Offset(0, 7),
            blurRadius: 29,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
