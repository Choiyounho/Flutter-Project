import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';

class HossAppBar extends StatefulWidget {
  const HossAppBar({super.key});

  @override
  State<HossAppBar> createState() => _HossAppBarState();
}

class _HossAppBarState extends State<HossAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      height: 60,
    );
  }
}
