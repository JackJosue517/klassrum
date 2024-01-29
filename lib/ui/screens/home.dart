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

  void _seeSettings() {
    Navigator.of(context).pushNamed('/settings');
  }

  void _seeSearchPage() {
    Navigator.of(context).pushNamed('/search');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: _seeSettings,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img/logo.jpg'),
            ),
          ),
        ),
        actions: [
          _selectedIndex == 1
              ? GestureDetector(
                  onTap: _seeSearchPage,
                  child: const Icon(
                    LineIcons.search,
                    size: 30.0,
                    color: AppColors.greyColor,
                  ),
                )
              : const Text(''),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: _seeNotifications,
            child: const Icon(
              LineIcons.bellAlt,
              size: 30.0,
              color: AppColors.greyColor,
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: viewItems[_selectedIndex],
      bottomNavigationBar: Column(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          Container(
            color: AppColors.trueWhiteColor,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: GNav(
                onTabChange: _updateViews,
                backgroundColor: AppColors.trueWhiteColor,
                color: Colors.grey[800],
                activeColor: AppColors.trueWhiteColor,
                tabBackgroundColor: AppColors.primaryColor.withOpacity(0.9),
                padding: const EdgeInsets.all(16),
                gap: 8,
                tabs: const <GButton>[
                  GButton(icon: LineIcons.home, text: 'Cours'),
                  GButton(icon: LineIcons.folderAlt, text: 'Ressources'),
                  GButton(icon: LineIcons.history, text: 'Historique'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
