import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:flutter/material.dart';

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;
  MyHeaderDelegate({
    required this.child,
    this.height = 50,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => scaleFontSize(height);

  @override
  double get minExtent => scaleFontSize(height);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
