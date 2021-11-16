import 'package:flutter/material.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';

class NavigationBarWid extends StatelessWidget {
  const NavigationBarWid({
    Key? key,
    required this.route,
  }) : super(key: key);
  final Function() route;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/icons/back.png',
              color: Color(0xffff5a5f),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: route,
            child: Image.asset(
              'assets/icons/next.png',
              color: Color(0xffdce364),
            ),
          )),
        ],
      ),
    );
  }
}
