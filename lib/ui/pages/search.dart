import 'package:flutter/material.dart';
import 'package:klassrum/ui/components/go_back_button.dart';
import 'package:line_icons/line_icons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _haveResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const GoBackButton(),
          title: TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(),
          ),
        ),
        body: _haveResults
            ? ListView.separated(
                itemCount: 2,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: _loadResults,
                    child: ListTile(
                      leading: const Row(
                        children: [
                          Icon(LineIcons.search),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      title: Text('item $index'),
                    ),
                  );
                },
              )
            : ListView.separated(
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('result $index'),
                  );
                },
              ));
  }

  void _loadResults() {
    setState(() {
      _haveResults = true;
    });
  }
}
