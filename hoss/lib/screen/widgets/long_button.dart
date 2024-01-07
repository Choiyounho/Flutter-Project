import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';

import '../../common/widget/w_arrow.dart';

class LongButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const LongButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          title.text.make(),
          EmptyExpanded(),
          Arrow()
        ],
      ),
    );
  }
}