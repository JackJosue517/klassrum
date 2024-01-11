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
              const SizedBox(
                width: 10,
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
              /*Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                    child: CachedNetworkImage(
                  imageUrl:
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fen%2Fsearch%3Fq%3Duser&psig=AOvVaw3PXfBCf6Tq_huANkws3PC8&ust=1704978311197000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCNDNz6bx0oMDFQAAAAAdAAAAABAE",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )),
              ),*/
            ],
            bottom: const TabBar(
                indicatorColor: AppColors.whiteColor,
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: AppColors.grayColor,
                dividerColor: AppColors.primaryColor,
                tabs: <Tab>[
                  Tab(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(LineIcons.clockAlt),
                      SizedBox(width: 6),
                      Text('A venir'),
                    ]),
                  ),
                  Tab(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(LineIcons.file),
                      SizedBox(width: 6),
                      Text('Rsrc'),
                    ]),
                  ),
                  Tab(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(LineIcons.history),
                      SizedBox(width: 6),
                      Text('His'),
                    ]),
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
