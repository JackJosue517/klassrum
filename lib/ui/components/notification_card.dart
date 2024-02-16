import 'package:flutter/material.dart';
import 'package:klassrum/data/models/AppNotification.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class NotificationCard extends StatelessWidget {
   NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.state,
  }) : iconColor = detectColors(state);

  final String title;
  final String subtitle;
  final NotificationType type;
  final Color iconColor; // Propriété de couleur globale

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(title, style: AppText.headline5),
        leading: switch (type) {
          NotificationType.newSession => Icon(LineIcons.bell, color: iconColor),
          NotificationType.removeSession => Icon(LineIcons.trash, color: iconColor),
          NotificationType.modifySession => Icon(LineIcons.editAlt, color: iconColor),
          NotificationType.information => Icon(LineIcons.infoCircle, color: iconColor),
        },
        subtitle: Text(subtitle, style: AppText.headline6),
      ),
    );
  }

  static Color detectColors(String state) {
    switch (state) {
      case "annuler":
        return Colors.red;
      case "valider":
        return Colors.green;
      case "modifier":
        return Colors.blue;
      case "debuter":
        return Colors.blueGrey;
      default:
        return Colors.black;
    }
  }
}