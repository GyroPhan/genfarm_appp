import 'package:flutter/material.dart';

class InfoListWid extends StatelessWidget {
  const InfoListWid({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListView(scrollDirection: Axis.horizontal, children: children),
    );
  }
}
