import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardWidget extends StatefulWidget {
  final String src;
  final String title;
  final String description;

  const OnBoardWidget(
      {super.key,
      required this.src,
      required this.title,
      required this.description});

  @override
  State<OnBoardWidget> createState() => _OnBoardWidgetState();
}

class _OnBoardWidgetState extends State<OnBoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          widget.src.toString(),
          width: double.infinity,
          height: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.title.toString()),
              const SizedBox(
                height: 20,
              ),
              Text(widget.description.toString()),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
