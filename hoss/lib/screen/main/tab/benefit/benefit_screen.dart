import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/benefit/point_button.dart';

class BenefitScreen extends StatefulWidget {
  const BenefitScreen({super.key});

  @override
  State<BenefitScreen> createState() => _BenefitScreenState();
}

class _BenefitScreenState extends State<BenefitScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Height(30),
          "혜택".text.white.bold.size(18).make().pSymmetric(h: 20),
          PointButton(point: 8000),
          "혜택 더 받기".text.white.bold.size(16).make().pSymmetric(h: 20),
        ],
      ),
    );
  }
}
