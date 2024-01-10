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
                icon: const Icon(LineIcons.bellAlt),
                tooltip: 'Notifications',
              ),
              CircleAvatar(
                  child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/40x40",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )),
            ],
            bottom:
                const TabBar(dividerColor: AppColors.primaryColor, tabs: <Tab>[
              Tab(
                icon: Icon(LineIcons.clockAlt),
                text: "À venir",
              ),
              Tab(
                icon: Icon(LineIcons.fileAlt),
                text: "Ressources",
              ),
              Tab(
                icon: Icon(LineIcons.history),
                text: "Historique",
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
