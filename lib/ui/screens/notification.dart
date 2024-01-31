import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  final List<NotificationData> notificationsList = const [
    NotificationData(
      title: 'Nouvelle session de cours',
      subtitle: 'Vous aurez cours avec M. HOETOWOU'
    ),
    NotificationData(
      title: 'Nouvelle session de cours',
      subtitle: 'Vous aurez cours avec M. HOETOWOU'
    ),
    NotificationData(
      title: 'Nouvelle session de cours',
      subtitle: 'Vous aurez cours avec M. HOETOWOU'
    ),
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
              child: const Icon(
                LineIcons.trash,
                size: 32.0,
                color: AppColors.greyColor,
              ),
            ),
            const SizedBox(width: 10)
          ]
        ),
        body: notificationsList.isNotEmpty
            ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: notificationsList.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) => Slidable(
                      endActionPane:
                          ActionPane(motion: const BehindMotion(), children: [
                        SlidableAction(
                          flex: 1,
                          spacing: 2,
                          label: 'Supprimer',
                          icon: LineIcons.trash,
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.redColor,
                          onPressed: (context) => _deleteOneNotification(index),
                        )
                      ]),
                      child: const NotificationCard(
                          title: 'Nouvelle session de cours',
                          subtitle:
                              'Vous avez prochainement cours avec M. HOETOWOU',
                          icon: LineIcons.bell,
                          iconColor: AppColors.primaryColor),
                    )))
            : Center(
                child: Column(
                children: [
                  SvgPicture.asset('assets/svg/no-update.svg'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Vous êtes à jour...'),
                ],
              )));
  }

  void _deleteOneNotification(int index) {
    setState((){
      notificationsList.removeAt(index);
    });
  }

  void _deleteAllNotifications() {
    setState((){
      notificationsList.clear();
    });
  }
}

enum NotificationType { newSession, doAction }

class NotificationData {
  final String title;
  final String subtitle;
  const NotificationData({required this.title, required this.subtitle});
}
