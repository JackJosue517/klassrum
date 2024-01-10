import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: const Text("Course Details"),
      ),
      body: const Center(
        child: Text("Course Description"),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0, onPressed: () {}, child: const Icon(Icons.join_right)),
    );
  }
}
