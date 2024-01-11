import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/pages/history.dart';
import 'package:klassrum/ui/pages/resources.dart';
import 'package:klassrum/ui/pages/upcoming.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Klassrum"),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  LineIcons.bellAlt,
                  size: 25,
                ),
                tooltip: 'Notifications',
              ),
              PopupMenuButton<int>(
                //onSelected: (item) =>  onSelected(),
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Settings"),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            bottom: const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                indicatorColor: AppColors.whiteColor,
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: AppColors.grayColor,
                dividerColor: AppColors.primaryColor,
                tabs: <Tab>[
                  Tab(
                    child: Row(
                    mainAxisSize: MainAxisSize.min, children: [
                      Icon(LineIcons.clockAlt),
                      Text('A venir'),
                    ]),
                  ),
                  Tab(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(LineIcons.file),
                      Text('Ressources'),
                    ]),
                  ),
                  Tab(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(LineIcons.history),
                      Text('Historique'),
                    ])
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            UpComingPage(),
            ResourcePage(),
            HistoryPage(),
          ]),
        ));
  }
}
