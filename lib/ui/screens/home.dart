import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/pages/history.dart';
import 'package:klassrum/ui/pages/resources.dart';
import 'package:klassrum/ui/pages/upcoming.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final viewItems = const <Widget>[
    UpComingPage(),
    ResourcePage(),
    HistoryPage(),
  ];

  void _updateViews(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  void _seeNotifications() {
    Navigator.of(context).pushNamed('/notifications');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.trueWhiteColor,
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://i.ibb.co/1nfH7xw/imresizer-1704975409967.jpg',
          ),
        ),
        actions: [
          IconButton.outlined(
            onPressed: _seeNotifications,
            icon: const Icon(
              LineIcons.notifications,
              size: 18.0,
              color: AppColors.darkColor,
            ),
          ),
        ],
      ),
      body: viewItems[_selectedIndex],
      bottomNavigationBar: Container(
        color: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: AppColors.primaryColor,
            color: AppColors.trueWhiteColor,
            activeColor: AppColors.primaryColor,
            tabBackgroundColor: AppColors.trueWhiteColor,
            padding: const EdgeInsets.all(16),
            gap: 9,
            onTabChange: _updateViews,
            tabs: const <GButton>[
              GButton(icon: Icons.watch_later_outlined, text: 'À venir'),
              GButton(icon: Icons.folder, text: 'Ressources'),
              GButton(icon: Icons.history_edu_outlined, text: 'Historique'),
            ],
          ),
        ),
      ),
    );
  }
}
