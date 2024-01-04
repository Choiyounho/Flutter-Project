import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const RoundedContainer(
      {super.key,
      required this.child,
      this.backgroundColor,
      this.radius = 8,
      this.padding,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.appColors.roundedLayoutBackground,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}