import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/title_box_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentMenuScreen extends StatelessWidget {
  const Ata21VentMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBarCus(context, title: 'AIR CONDITION'),
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(gradient: kMainGradient),
          child: ListView(
            children: [
              TitleBoxWid(
                width: width,
                title: 'PRESENTATION',
                onTap: () {
                  NavigationService.push(Routes.ata21_vent_present);
                },
              ),
              TitleBoxWid(
                width: width,
                title: 'CONTROL & INDICATING',
                onTap: () {
                  NavigationService.push(Routes.ata21_vent_controlpanel);
                },
              ),
              TitleBoxWid(
                width: width,
                title: 'COMPONENT LOCATION',
                onTap: () {
                  NavigationService.push(Routes.ata21_vent_loca);
                },
              ),
            ],
          )),
    );
  }
}
