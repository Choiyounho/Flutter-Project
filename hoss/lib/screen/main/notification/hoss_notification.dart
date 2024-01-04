import 'notification_type.dart';

class HossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  HossNotification(
      this.type,
      this.description,
      this.time, {
        this.isRead = false,
      });
}