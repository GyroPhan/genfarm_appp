import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/title_box_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21HomeScreen extends StatefulWidget {
  const Ata21HomeScreen({Key? key}) : super(key: key);

  @override
  _Ata21HomeScreenState createState() => _Ata21HomeScreenState();
}

class _Ata21HomeScreenState extends State<Ata21HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - AIR CONDITION'),
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(gradient: kMainGradient),
          child: ListView(
            children: [
              TitleBoxWid(
                width: width,
                title: 'AIR CONDITIONING',
                onTap: () {
                  NavigationService.push(Routes.ata21_aircondi_menu);
                },
              ),
              TitleBoxWid(
                width: width,
                title: 'VENTILATION',
                onTap: () {
                  NavigationService.push(Routes.ata21_vent_menu);
                },
              ),
              TitleBoxWid(
                width: width,
                title: 'PRESSURIZE',
                onTap: () {
                  NavigationService.push(Routes.ata21_press_menu);
                },
              ),
            ],
          )),
    );
  }
}
