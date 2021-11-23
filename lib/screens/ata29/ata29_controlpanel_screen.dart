import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata29ControlPanelScreen extends StatelessWidget {
  const Ata29ControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '29 - Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_29/ata29_controlpanel.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'On the ENG FIRE panel (20VU), the fire shut-off valve pushbuttons ENG 1 (2) released out will close the fire shut-off valves.'),
                CusText(
                    text:
                        'The EDPs, electric pumps, PTU and the RAT are operated from the HYD control panel and monitored on the HYD ECAM page.'),
                CusText(
                    text:
                        'The blue electric pump can also be operated on ground for maintenance purpose by the BLUE PUMP OVRD push button on the HYD maintenance panel.\nThe hydraulic leak measurement system is used for maintenance purpose only.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata29_ecam,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
