import 'package:flutter/material.dart';
import 'package:klassrum/data/models/notification_model.dart';
import 'package:klassrum/ui/configs/styles.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.type,
  });

  final String title;
  final String subtitle;
  final NotificationType type;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(title, style: AppText.headline5),
        leading: Icon(
          Icons.notification_important,
          color: detectColors(type),
        ),
        subtitle: Text(subtitle, style: AppText.headline6),
      ),
    );
  }

  static Color detectColors(NotificationType type) {
    switch (type) {
      case NotificationType.cancelSession:
        return Colors.red;
      case NotificationType.newSession:
        return Colors.green;
      case NotificationType.modifySession:
        return Colors.blue;
      case NotificationType.information:
        return Colors.blueGrey;
      default:
        return Colors.black;
    }
  }
}
