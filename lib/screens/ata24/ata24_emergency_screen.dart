import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24EmergencyScreen extends StatelessWidget {
  const Ata24EmergencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Emergency Configuration'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_emergency.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Emergency Configuration'),
                CusText(
                    text:
                        'The hydraulic power to drive the Emergency Generator (EMER GEN) is given by a Ram Air Turbine (RAT) via the blue hydraulic system.\nRAT located in belly fairing, extends automatically when AC BUS 1 and 2 are lost.'),
                CusText(
                    text:
                        'The RAT is in the belly fairing and extends automatically in case of loss of AC BUS 1 and 2. Then, the EMER GEN supplies the DC ESS through AC ESS directly TR. In emergency configuration (loss of AC BUS 1 and AC BUS 2), the ESS TR is supplied by the EMER GEN.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_batonly);
              },
            )
          ],
        ),
      ),
    );
  }
}
