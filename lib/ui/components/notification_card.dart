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
    return Card(child: ListTile(title: title, leading: Icon(icon, color: iconColor), subtitle: subtitle));/*Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(child: Icon(icon, color: iconColor)),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: AppText.headline5.copyWith(color: AppColors.darkColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                title),
            const SizedBox(height: 4),
            Expanded(
              child: Text(
                style: AppText.headline6.copyWith(color: AppColors.greyColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                subtitle,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(LineIcons.dotCircle, color: AppColors.greenColor),
      ),
    ])*/
  }
}
