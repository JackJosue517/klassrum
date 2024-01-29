import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.iconColor});

  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(child: ListTile(
      title: Text(title, style: AppText.headline5), leading: Icon(icon, color: iconColor), subtitle: Text(subtitle, style: AppText.headline6)));
        
  }
}
