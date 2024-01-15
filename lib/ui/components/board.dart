import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:klassrum/ui/configs/styles.dart';

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
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        SvgPicture.asset(
          widget.src.toString(),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title.toString(),
                style: AppText.headline3,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(widget.description.toString()),
              const SizedBox(
                height: 125.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
