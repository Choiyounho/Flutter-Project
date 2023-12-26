import 'package:flutter/material.dart';

import 'insta_home_screen.dart';
import 'insta_search_screen.dart';

class InstaMainScreenBody extends StatelessWidget {
  final int index;

  const InstaMainScreenBody({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const InstaHomeScreen();
    }

    return const InstaSearchScreen();
  }
}
