import 'package:flutter/material.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../constants.dart';

AppBar buildAppBarCus(BuildContext context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        NavigationService.push(Routes.home, replace: true, clean: true);
      },
      child: Container(
          margin: EdgeInsets.all(kConstPadding),
          child: Image.asset('assets/icons/menu.png', fit: BoxFit.fitHeight)),
    ),
    elevation: 0,
    title: Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    centerTitle: true,
    backgroundColor: Color(0xff0492c2),
    actions: [
      GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(kConstPadding),
            child: Image.asset('assets/icons/menu.png'),
          ))
    ],
  );
}
