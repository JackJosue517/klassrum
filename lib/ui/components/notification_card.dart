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
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(icon, color: iconColor),
      const SizedBox(height: 16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: AppText.headline4.copyWith(color: AppColors.darkColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                title),
            const SizedBox(height: 4),
            Expanded(
              child: Text(
                style: AppText.headline5.copyWith(color: AppColors.darkColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                subtitle,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 16),
      Icon(LineIcons.dotCircleAlt, color: iconColor),
    ]);
  }
}
