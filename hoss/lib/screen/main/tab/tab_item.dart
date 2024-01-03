import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/tab/all/all_screen.dart';
import 'package:hoss/screen/main/tab/benefit/benefit_screen.dart';
import 'package:hoss/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';
import 'package:hoss/screen/main/tab/hosspay/hoss_pay_screen.dart';
import 'package:hoss/screen/main/tab/stock/stock_screen.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  benefit(Icons.star, '혜택', BenefitScreen()),
  hosspay(Icons.payment, '호스페이', HossPayScreen()),
  stock(Icons.candlestick_chart, '주식', StockScreen()),
  all(Icons.menu, '전체', AllScreen());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
