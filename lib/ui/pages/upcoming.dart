import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/components/cours_space.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/pages/calendar.dart';

class UpComingPage extends StatelessWidget {
  const UpComingPage({super.key});

  void onTapDay(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          child: Calendar(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => onTapDay(context),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: AppColors.buttonTextColor,
                        ),
                        Gap(4),
                        Text(
                          "Aujourd'hui",
                          textAlign: TextAlign.end,
                          style: TextStyle(color: AppColors.buttonTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(8),
              ],
            ),
            const Gap(24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                //color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                  children:
                      List.generate(10, (index) => const CourseComponent())
                          .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
