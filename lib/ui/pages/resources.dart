import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Récents', style: AppText.headline5),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                ]
              )
            ),
            Text('Catégories', style: AppText.headline5),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                  Container(width: 90, height: 90, color: AppColors.primaryColor),
                ]
              )
            ),
            Text('Collections', style: AppText.headline5),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(width: double.infinity, height: 90, color: AppColors.primaryColor),
                  Container(width: double.infinity, height: 90, color: AppColors.primaryColor),
                ]
              )
            ),
          ]
        )
      )
    );
  }
}
