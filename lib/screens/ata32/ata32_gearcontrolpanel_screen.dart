import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32GearControlPanelScreen extends StatelessWidget {
  const Ata32GearControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Gears Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_gearcontrol.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Gears Control Panels'),
                CusText(
                    text:
                        'Cockpit panel location:\n _L/G control lever,\n _L/G gravity extension handle,\n _L/G panel which includes:\n _L/G position indication panel,\n _Auto brake mode selection panel,\n _Brake fan indication/selection panel\n _A/SKID & N/W STeeRinG selector.\n _ECAM WHEEL page.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_brakecontrol);
              },
            )
          ],
        ),
      ),
    );
  }
}
