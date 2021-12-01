import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/title_box_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27HomeScreen extends StatelessWidget {
  const Ata27HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - FLIGHT CONTROL'),
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(gradient: kMainGradient),
          child: ListView(
            children: [
              TitleBoxWid(
                width: width,
                title: "PRESENTATION",
                onTap: () {
                  NavigationService.push(Routes.ata27_present);
                },
              ),
              TitleBoxWid(
                width: width,
                title: 'CONTROL AND INDICATING',
                onTap: () {
                  NavigationService.push(Routes.ata27_controllever);
                },
              ),
              TitleBoxWid(
                width: width,
                title: 'LOCATION',
                onTap: () {
                  NavigationService.push(Routes.ata27_actuatorwingloca);
                },
              ),
            ],
          )),
    );
  }
}
