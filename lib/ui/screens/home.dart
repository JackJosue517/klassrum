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
          child: CircleAvatar(
              child: CachedNetworkImage(
            imageUrl: "https://i.ibb.co/1nfH7xw/imresizer-1704975409967.jpg",
            //placeholder: (context, url) => const CircularProgressIndicator(),
            //errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
        ),
        actions: [
          _selectedIndex == 1
              ? GestureDetector(
                  onTap: _seeSearchPage,
                  child: const Icon(
                    LineIcons.search,
                    size: 22.0,
                    color: AppColors.darkColor,
                  ),
                )
              : const Text(''),
          GestureDetector(
            onTap: _seeNotifications,
            child: const Icon(
              LineIcons.bellAlt,
              size: 22.0,
              color: AppColors.darkColor,
            ),
          ),
        ],
      ),
      body: viewItems[_selectedIndex],
      bottomNavigationBar: Container(
        color: AppColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: GNav(
            backgroundColor: AppColors.whiteColor,
            color: AppColors.trueWhiteColor,
            activeColor: AppColors.whiteColor,
            tabBackgroundColor: AppColors.trueWhiteColor,
            padding: const EdgeInsets.all(5.0),
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
