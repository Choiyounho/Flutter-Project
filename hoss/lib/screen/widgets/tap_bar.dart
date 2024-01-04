import 'package:flutter/material.dart';
import 'package:hoss/common/common.dart';
import 'package:hoss/screen/main/notification/notification_screen.dart';

class HossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;
  const HossAppBar({super.key});

  @override
  State<HossAppBar> createState() => _HossAppBarState();
}

class _HossAppBarState extends State<HossAppBar> {
  bool _isShowRedDot = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      height: 60,
      child: Row(
        children: [
          const Width(10),
          Image.asset(
            '$basePath/icon/toss.png',
            height: 30,
          ),
          const EmptyExpanded(),
          Image.asset(
            '$basePath/icon/map_point.png',
            height: 30,
          ),
          const Width(10),
          Tap(
            onTap: () {
              Nav.push(const NotificationScreen());
            },
            child: Stack(children: [
              Image.asset(
                '$basePath/icon/notification.png',
                height: 30,
              ),
              if (_isShowRedDot)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                )
            ]),
          ),
          const Width(10)
        ],
      ),
    );
  }
}
