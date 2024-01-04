import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';

import 'benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          benefit.imagePath,
          width: 50,
          height: 50,
        ),
        const Width(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.size(13).make(),
            const Height(5),
            benefit.title.text
                .color(context.appColors.blueText)
                .size(13)
                .make(),
          ],
        )
      ],
    ).pSymmetric(v: 20);
  }
}
