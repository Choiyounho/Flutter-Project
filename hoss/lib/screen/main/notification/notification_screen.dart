import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'hoss_notification.dart';
import 'notificaation_item.dart';
import 'notification_dialog.dart';
import 'notification_type.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("알림"),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                onTap: () {
                  NotificationDialog([notificationDummies[0], notificationDummies[1]]).show();
                },
              ),
              childCount: notificationDummies.length,
            ),
          )
        ],
      ),
    );
  }
}

final notificationDummies = <HossNotification>[
  HossNotification(
    NotificationType.hossPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(27.minutes),
  ),
  HossNotification(
    NotificationType.stock,
    '인적분할에 대해 알려드릴게요.',
    DateTime.now().subtract(1.hours),
  ),
  HossNotification(
    NotificationType.walk,
    '1000걸음 이상 걸었다면 포인트 받으세요.',
    DateTime.now().subtract(1.hours),
    isRead: true,
  ),
  HossNotification(
    NotificationType.moneyTip,
    '유럽 식품 물가가 치솟고 있어요.\n남반석님, 유럽여행에 관심이 있다면 확인해보세요.',
    DateTime.now().subtract(8.hours),
    isRead: true,
  ),
  HossNotification(
    NotificationType.walk,
    '오늘 1000걸음을 넘겼어요. 포인트를 받아보세요.',
    DateTime.now().subtract(11.hours),
  ),
  HossNotification(
    NotificationType.luck,
    '6월 5일, 행운 복권이 도착했어요.',
    DateTime.now().subtract(12.hours),
  ),
  HossNotification(
    NotificationType.people,
    '띵동! 월요일 공동구매 보러가기',
    DateTime.now().subtract(1.days),
  ),
];