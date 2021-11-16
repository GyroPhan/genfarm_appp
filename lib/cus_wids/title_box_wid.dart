import 'package:flutter/material.dart';

import '../constants.dart';

class TitleBoxWid extends StatelessWidget {
  const TitleBoxWid(
      {Key? key, required this.width, required this.title, required this.onTap})
      : super(key: key);

  final double width;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 60,
        padding: EdgeInsets.all(kConstPadding),
        margin: EdgeInsets.all(kConstPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kBoxColor,
            borderRadius: BorderRadius.circular(kConstPadding),
            border: Border.all(color: Colors.blueAccent, width: 2)),
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
