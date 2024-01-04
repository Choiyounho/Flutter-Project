import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/common/widget/w_arrow.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.color(context.appColors.lessImportant).make(),
        const EmptyExpanded(),
        "$point 원".text.bold.make(),
        const Width(10),
        const Arrow()
      ],
    );
  }
}
