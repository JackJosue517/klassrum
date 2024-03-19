import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';

class CourseComponent extends StatelessWidget {
  const CourseComponent({super.key});

  void _seeCourseDetails(BuildContext context) {
    Navigator.of(context).pushNamed('/course-details');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () => _seeCourseDetails(context),
            child: Container(
             padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/img/course_banner.jpg"),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
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
                      )),
                  Expanded(
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "INF 331 - Programmation Orientée Objet",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "Inter",
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Gap(4),
                          Text(
                            "Les conceptes de l'orienté objet",
                            style: TextStyle(
                              color: AppColors.textgrayColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: "Inter",
                            ),
                          ),
                          const Gap(4),
                          Row(children: [
                            const Icon(
                              Icons.fiber_manual_record,
                              color: AppColors.redColor,
                              size: 24.0,
                            ),
                            const Gap(4),
                            Text(
                              "En cours",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: "Inter",
                                color: AppColors.textgrayColor
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
        const Gap(12)
      ],
    );
  }
}
