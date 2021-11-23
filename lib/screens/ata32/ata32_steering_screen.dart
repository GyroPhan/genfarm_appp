import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32SteeringScreen extends StatelessWidget {
  const Ata32SteeringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Steering'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_steer.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Steering'),
                CusText(
                    text:
                        'The steering system uses the yellow hydraulic system to operate a steering actuating cylinder, which changes the direction of the NLG wheels. The classic steering system is supplied from the green hydraulic system. The N/W doors must be closed in order for the hydraulic system to apply pressure to the steering actuating cylinder.'),
                CusText(
                    text:
                        'The steering system is controlled by the BSCU, which receives order from:\n _The steering hand wheels (orders added algebraically),\n _The rudder pedals,\n _The autopilot.'),
                CusText(
                    text:
                        'The BSCU transforms the orders into N/WS angle. That angle has the following limits:\n _Ruder pedals: max 6 degrees,\n _Hand wheels: max 75 degrees.'),
                CusText(
                    text:
                        'The steering system receives hydraulic pressure in the following conditions: \n _A/SKID & N/W STeeRinG switch in ON,\n _Towing control lever in normal position,\n _At least one ENG MASTER switch ON\n _Aircraft is on ground.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_home,
                    clean: true, replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
