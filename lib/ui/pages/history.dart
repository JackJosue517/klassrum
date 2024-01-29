import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(LineIcons.videoFileAlt, color: AppColors.primaryColor, size: 50),
    );
  }
}
