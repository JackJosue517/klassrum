
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(children: [
          const Gap(4),
          Container(
            padding: const EdgeInsets.only(top: 50),
              height: 200,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage("assets/img/photoCours.jpg"),
                  fit: BoxFit.fill
                )
              ),
              child:  const Column(
                children: [
                   Text(
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor
                      ),
                      "INF 331"),
                   Text(
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor
                      ),
                      "Programmation Orientée Objet"),
                ],
              ),
          ),
          const Gap(16),
          const Text(
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              "Les conceptes de la l'orienté objet"),
          const Gap(16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "Date"),
                    Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "12/34/13445"),
                  ],
                ),
                const Gap(16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "Heure"),
                    Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "12:34"),
                  ],
                ),
                const Gap(16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "Durée"),
                    Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        "2 heures"),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text(
            "Rejoindre \n la salle",
            style: TextStyle(color: AppColors.whiteColor),
          ),
          elevation: 0,
          onPressed: () {
            Navigator.of(context).pushNamed('/call-room');
          },
          backgroundColor: AppColors.primaryColor,
          icon: const Icon(Icons.video_call, color: AppColors.whiteColor)),
    );
  }
}
