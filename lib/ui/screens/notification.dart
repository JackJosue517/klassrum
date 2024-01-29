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
      title: 'Nouvelle session de cours ajouté',
      subtitle: 'Une nouvelle rencontre aura lieu avec M. BARATE Mohamed',
    ),
    NotificationData(
      title: 'Nouvelle session de cours ajouté',
      subtitle: 'Une nouvelle rencontre aura lieu avec M. BARATE Mohamed',
    ),
    NotificationData(
      title: 'Nouvelle session de cours ajouté',
      subtitle: 'Une nouvelle rencontre aura lieu avec M. BARATE Mohamed',
    ),
    NotificationData(
      title: 'Nouvelle session de cours ajouté',
      subtitle: 'Une nouvelle rencontre aura lieu avec M. BARATE Mohamed',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const GoBackButton(),
          title: const Text('Notifications'),
        ),
        body: notificationsList.isNotEmpty
            ? ListView.separated(
              itemCount: notificationsList.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) => Slidable(
                  endActionPane: ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        label: 'Supprimer',
                        icon: Icons.trash,
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.redColor,
                        onPressed: _deleteNotification(index),
                      )
                    ]
                  )
                  child: NotificationCard(
                      title: 'Nouvelle session de cours',
                      subtitle: 'Vous avez prochainement cours avec M. HOETOWOU',
                      icon: LineIcons.bell,
                      iconColor: AppColors.primaryColor),
                ))
            : Center(
                child: Column(
                children: [
                  SvgPicture.asset('assets/svg/board01.svg'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Vous êtes à jour...'),
                ],
              )));
  }

  void _deleteNotification(int index) {
    notificationsList.removeAt(index);
  }
}

enum NotificationType { newSession, doAction }

class NotificationData {
  final String title;
  final String subtitle;
  const NotificationData({required this.title, required this.subtitle});
}
