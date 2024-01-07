import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/stock/setting/s_stting.dart';
import 'package:hoss/screen/main/tab/stock/stock_search_screen.dart';
import 'package:hoss/screen/main/tab/stock/tab/my_stock_screen.dart';
import 'package:hoss/screen/main/tab/stock/tab/today_discovery_screen.dart';
import 'package:nav/nav.dart';

import '../../../widgets/image_button.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                Nav.push(const StockSearchScreen());
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('캘린더');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                Nav.push(const SettingScreen());
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
             if (currentIndex == 0) const MyStockScreen() else const TodaysDiscoveryScreen()
            ],
          ),
        )
      ],
    );
  }

  Widget get title => Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      '토스증권'.text.size(24).bold.make(),
      Width(20),
      'S&P 500'.text.size(13).bold.color(context.appColors.lessImportant).make(),
      Width(10),
      3919.29.toComma().text.size(13).bold.color(context.appColors.plus).make(),
    ],
  ).pOnly(left: 20);

  Widget get tabBar => Column(
    children: [
      TabBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelPadding: const EdgeInsets.symmetric(vertical: 20),
        indicatorColor: Colors.white,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
        controller: _tabController,
        tabs: [
          '내 주식'.text.make(),
          '오늘의 발견'.text.make(),
        ],
      ),
      const Line(
      ),
    ],
  );
}
