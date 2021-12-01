import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27EcamScreen extends StatelessWidget {
  const Ata27EcamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Indicating'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_ecam.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Indicating'),
                CusText(
                    text:
                        'FLIGHT CONTROL PANEL\nThe computer push buttons are used to energize, de-energize and reset the flight control computers.\nFAULT or OFF can be indicated.'),
                CusText(
                    text:
                        'SIDE STICK PRIORITY LIGHT\nThe side stick priority lights in front of each pilot, indicate who has taken and who has lost priority.'),
                CusText(
                    text:
                        'ECAM\nThe flight control system uses three ECAM pages:\n _ Flight control ECAM page for primary surface indication,\n _ WHEEL ECAM page for ground spoiler indication,\n _ engine/Warning Display for slat/flap indication.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_ecam_enhance);
              },
            )
          ],
        ),
      ),
    );
  }
}
