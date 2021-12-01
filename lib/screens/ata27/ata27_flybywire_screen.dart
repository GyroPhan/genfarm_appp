import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27FlyByWireScreen extends StatelessWidget {
  const Ata27FlyByWireScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Fly By Wire Principle'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_flybywire.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Fly By Wire Principle'),
                CusText(
                    text:
                        'The pilots use the side sticks to fly the aircraft in pitch and roll (and in yaw indirectly through turn coordination).\nComputers interpret the pilot\'s inputs and move the flight control surfaces to follow their orders.\nHowever, regardless of the pilot\'s inputs, the computer prevents:\n _Excessive maneuvers\n _Flight outside the safe flight envelope.\nAutopilot commands are given directly to the computers.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_controlarchitech);
              },
            )
          ],
        ),
      ),
    );
  }
}
