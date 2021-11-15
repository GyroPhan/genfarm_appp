import 'package:flutter/material.dart';

import '../constants.dart';

class CusText extends StatelessWidget {
  const CusText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kConstPadding * 2),
          child: Text(
            text,
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: 20, height: 2),
          ),
        ),
      ),
    );
  }
}
