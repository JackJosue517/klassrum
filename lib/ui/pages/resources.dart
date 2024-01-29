import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({super.key});

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(LineIcons.imageFileAlt, color: AppColors.primaryColor, size: 50),
    );
          
  }
}
