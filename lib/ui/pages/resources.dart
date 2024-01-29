import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                'Récents',
                style: AppText.headline4,
              ),
              SingleChildScrollView(
                child: Row(children: [
                  ListView.separated(
                      itemCount: 9,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 15),
                      itemBuilder: (context, index) => Container(
                            color: AppColors.primaryColor,
                          ))
                ]),
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Catégories',
                style: AppText.headline4,
              ),
              Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(color: Colors.yellow),
                      Container(color: Colors.yellowAccent),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(color: Colors.purple),
                      Container(color: Colors.purpleAccent),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(color: Colors.green),
                      Container(color: Colors.greenAccent),
                    ]),
              ]),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Collections',
                style: AppText.headline4,
              ),
              Column(children: [
                Container(width: double.infinity, color: Colors.purple),
                Container(width: double.infinity, color: Colors.purpleAccent),
              ])
            ],
          ),
        ],
      ),
    );
  }
}
