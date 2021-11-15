import 'package:flutter/material.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';

import '../constants.dart';

class NavigationBarWid extends StatelessWidget {
  const NavigationBarWid({
    Key? key,
    required this.route,
  }) : super(key: key);
  final String route;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.all(kConstPadding),
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(kConstPadding * 2)),
              child: Icon(
                Icons.arrow_left,
                size: 80,
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              NavigationService.push(route);
            },
            child: Container(
              margin: EdgeInsets.all(kConstPadding),
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(kConstPadding * 2)),
              child: Icon(
                Icons.arrow_right,
                size: 80,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
