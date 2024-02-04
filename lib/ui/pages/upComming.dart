import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/components/cours_space.dart';
import 'package:klassrum/ui/configs/styles.dart';

class UpComingPage extends StatelessWidget {
  const UpComingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue, // Couleur de la bordure
                      width: 2.0, // Largeur de la bordure
                    )),
                child: const Text(
                  "Aujourd'hui",
                  textAlign: TextAlign.end,
                ),
              ),
              const Gap(8),

            ],
          ),
          //const Gap(4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              //color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              children: [
                Gap(8),
                CourseComponent(),
                Gap(8),
                CourseComponent(),
                Gap(8),
                CourseComponent()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
