import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/pages/history.dart';
import 'package:klassrum/ui/pages/resources.dart';
import 'package:klassrum/ui/pages/upcoming.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_svg/svg.dart';

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
    showSearch(
      context: context,
      delegate: AppSearchDelegate(),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    //context.read<WeatherBloc>().add(WeatherFetched());
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
              backgroundImage: AssetImage('assets/img/default_profil.jpg'),
            ),
          ),
        ),
        actions: [
          _selectedIndex == 1
              ? GestureDetector(
                  onTap: _seeSearchPage,
                  child: const Icon(
                    LineIcons.search,
                    size: 32.0,
                  ),
                )
              : const Text(''),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: _seeNotifications,
            child: const Icon(
              LineIcons.bellAlt,
              size: 32.0,
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: viewItems[_selectedIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Divider(
            color: Color.fromRGBO(189, 189, 189, 1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
              onTabChange: _updateViews,
              activeColor: AppColors.buttonTextColor,
              tabBackgroundColor: AppColors.buttonColor.withOpacity(0.9),
              padding: const EdgeInsets.all(16),
              gap: 8,
              tabs: const <GButton>[
                GButton(icon: LineIcons.book, text: 'Cours'),
                GButton(icon: LineIcons.folderAlt, text: 'Ressources'),
                GButton(icon: LineIcons.history, text: 'Historique'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Banana',
    'Pear',
    'Watermelons',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(LineIcons.angleLeft),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var word in searchTerms) {
      if (word.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(word);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return matchQuery.isNotEmpty
              ? Column(children: [
                  const Text('Résultats de recherche'),
                  ListTile(
                    title: Text(result),
                  ),
                ])
              : Center(
                  child: Column(
                  children: [
                    SvgPicture.asset('assets/svg/no-update.svg'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Aucune correspondance trouvée'),
                  ],
                ));
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [];
    for (var word in searchTerms) {
      if (word.toLowerCase().contains(query.toLowerCase())) {
        suggestions.add(word);
      }
    }

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          var suggestion = suggestions[index];
          return ListTile(
            leading: const Icon(Icons.search),
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
