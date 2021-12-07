import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22AutoPilotScreen extends StatelessWidget {
  const Ata22AutoPilotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title:
              '22 - Flight Management/Flight Guidance - Auto Pilot/Flight Director'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_autopilot.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'Flight Management/Flight Guidance - Auto Pilot/Flight Director'),
                CusText(
                    text:
                        'The main AP and FD functions are:\n _ Stabilization of the aircraft around its center of gravity when the AP/FD system holds vertical speed or flight path angle and heading or track,\n _ Acquisition and holding of a flight path,\n _ Guidance of the aircraft at take off,\n _ Automatic landing and go around.'),
                CusText(
                    text:
                        'The AP function gives orders to control:\n _ The position of the control surfaces on the three axes (pitch, roll and yaw),\n _ The nose wheel steering.'),
                CusText(
                    text:
                        'The FD function generates optimum guidance orders used in manual controls. The FD is also used to monitor the AP when it is engaged.\nThe FD symbols are displayed on the PFDs.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_autothrust);
              },
            )
          ],
        ),
      ),
    );
  }
}
