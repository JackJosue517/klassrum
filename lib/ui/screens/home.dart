import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/pages/history.dart';
import 'package:klassrum/ui/pages/resources.dart';
import 'package:klassrum/ui/pages/upcoming.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                child: CachedNetworkImage(
              imageUrl:
                  "https://upload.wikimedia.org/wikipedia/commons/8/83/Telegram_2019_Logo.svg",
            )),
          ),
        ),
        actions: [
          _selectedIndex == 1
              ? GestureDetector(
                  onTap: _seeSearchPage,
                  child: const Icon(
                    LineIcons.search,
                    size: 24.0,
                    color: AppColors.greyColor,
                  ),
                )
              : const Text(''),
          const SizedBox(width: 20),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: _seeNotifications,
            child: const Icon(
              LineIcons.bellAlt,
              size: 24.0,
              color: AppColors.greyColor,
            ),
          ),
          const SizedBox(width: 20),
          const SizedBox(width: 20)
        ],
      ),
      body: viewItems[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
            rippleColor: const Color.fromRGBO(66, 66, 66, 1),
            hoverColor: const Color.fromRGBO(97, 97, 97, 1),
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            ],
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 900),
            gap: 8,
            color: Colors.grey[800],
            activeColor: AppColors.primaryColor,
            iconSize: 24,
            tabBackgroundColor: AppColors.primaryColor.withOpacity(0.1),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            onTabChange: _updateViews,
            tabs: const <GButton>[
              GButton(icon: LineIcons.wix, text: 'À venir'),
              GButton(icon: LineIcons.folderAlt, text: 'Ressources'),
              GButton(icon: LineIcons.history, text: 'Historique'),
            ],
          ),
        ),
      ),
    );
  }
}
