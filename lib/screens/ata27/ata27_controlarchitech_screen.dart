import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27ControlArchitechScreen extends StatelessWidget {
  const Ata27ControlArchitechScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '27 - Flight Control Architecture'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_controlarchitech.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Flight Control Architecture'),
                CusText(
                    text:
                        'A computer arrangement permanently controls and monitors the flight control surfaces, it also records and stores faults.'),
                CusText(
                    text:
                        'This arrangement includes:\n _ 2 Elevator Aileron Computers (ELAC) for pitch and roll control,\n _ 3 Spoiler Elevator Computers (SEC) for pitch and roll control,\n _ 2 Flight Augmentation Computers (FAC) for yaw control,\n _ 2 Flight Control Data Concentrators (FCDC) for indication and maintenance tests,\n _ 2 Flight Management Guidance Computer (FMGC) for autopilot commands,\n _ 2 Slat Flap Control Computers (SFCC) for slat and flap control.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_controllaw);
              },
            )
          ],
        ),
      ),
    );
  }
}
