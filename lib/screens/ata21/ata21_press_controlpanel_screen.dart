import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21PressControlPanelScreen extends StatelessWidget {
  const Ata21PressControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '21 - Pressurization Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_press_controlpanel.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Pressurization Control Panel'),
                CusText(
                    text:
                        'The CABIN PRESSure control panel is installed on the overhead panel. The panel includes both automatic and manual pressurization controls.'),
                CusText(
                    text:
                        'The MODE SELect switch lets the system be used in automatic or manual mode, in case of failure of the automatic function.\nWhen the manual mode is selected, the MANual Vertical Speed (V/S) ConTroL switch is used to directly control the outflow valve (indirectly, the cabin rate of climb) using the third motor.'),
                CusText(
                    text:
                        'The guarded DITCHING switch is used to close all lower fuselage valves so that the A/C can be sealed in the unlikely event of a ditching.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_press_ecam);
              },
            )
          ],
        ),
      ),
    );
  }
}
