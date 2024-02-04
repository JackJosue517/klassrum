import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CourseComponent extends StatelessWidget {
  const CourseComponent({super.key});

  void _seeCourseDetails(BuildContext context){
    Navigator.of(context).pushNamed('/course-details');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> _seeCourseDetails(context),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        //padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F6FA),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
                height: 100,
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/course_banner.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A282F),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "07:00 PM",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          fontFamily: "Inter",
                        ),
                      ),
                    ),
                  ],
                )
            ),
            Container(
              color: Colors.blueGrey[25],
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "INF 331 - Programmation Orientée Objet",
                    style: TextStyle(
                      color: Color(0xFF2A282F),
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      fontFamily: "Inter",
                    ),
                  ),
                   Gap(8),
                   Text(
                    "Les conceptes de l'orienté objet",
                    style: TextStyle(
                      color: Color(0xFF625F68),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: "Inter",
                    ),
                  ),
                   Gap(8),
                   Row(
                    children: [
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.red,
                        size: 24.0,
                      ),
                       Gap(4),
                       Text(
                        "En cours",
                        style: TextStyle(
                          color: Color(0xFFA8A6AC),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
