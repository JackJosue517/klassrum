/*import 'package:flutter/material.dart';
import 'package:klassrum/data/models/AppNotification.dart';
import 'package:klassrum/ui/components/go_back_button.dart';
import 'package:klassrum/ui/components/notification_card.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:klassrum/ui/configs/styles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<AppNotification> notificationsList = [
    AppNotification(
        title: 'Nouvelle session de cours',
        subtitle: 'Vous aurez cours avec M. HOETOWOU',
        type: NotificationType.newSession),
    AppNotification(
        title: 'Nouvelle session de cours',
        subtitle: 'Vous aurez cours avec M. HOETOWOU',
        type: NotificationType.modifySession),
    AppNotification(
        title: 'Nouvelle session de cours',
        subtitle: 'Vous aurez cours avec M. HOETOWOU',
        type: NotificationType.information),
    AppNotification(
        title: 'Nouvelle session de cours',
        subtitle: 'Vous aurez cours avec M. HOETOWOU',
        type: NotificationType.removeSession),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const GoBackButton(),
            title: const Text('Notifications'),
            actions: [
              GestureDetector(
                onTap: _deleteAllNotifications,
                child: notificationsList.isNotEmpty
                    ? const Icon(
                        LineIcons.trash,
                        size: 32.0,
                        color: AppColors.redColor,
                      )
                    : const Icon(
                        LineIcons.trash,
                        size: 32.0,
                        color: AppColors.greyColor,
                      ),
              ),
              const SizedBox(width: 10)
            ]),
        body: notificationsList.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    itemCount: notificationsList.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) => Slidable(
                          endActionPane: ActionPane(
                              motion: const BehindMotion(),
                              children: [
                                SlidableAction(
                                  flex: 1,
                                  spacing: 2,
                                  label: 'Supprimer',
                                  icon: LineIcons.trash,
                                  foregroundColor: Colors.white,
                                  backgroundColor: AppColors.redColor,
                                  onPressed: (context) =>
                                      _deleteOneNotification(index),
                                )
                              ]),
                          child: NotificationCard(
                            title: 'Nouvelle session de cours',
                            subtitle:
                                'Vous avez prochainement cours avec M. HOETOWOU',
                          ),
                        )))
            : Center(
                child: Column(
                children: [
                  Image.asset('assets/img/no-update.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Vous êtes à jour...'),
                ],
              )));
  }

  void _deleteOneNotification(int index) {
    setState(() {
      notificationsList.removeAt(index);
    });
  }

  void _deleteAllNotifications() {
    setState(() {
      notificationsList.clear();
    });
  }
}*/
