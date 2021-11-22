import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiEcamScreen extends StatelessWidget {
  const Ata21AirCondiEcamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - ECAM Pages'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_ecam.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'Basic temperature regulation is accomplished by the packs. Pack parameters, such as pack flow and bypass valve position are found on the upper section of the ECAM BLEED page.'),
                CusText(
                    text:
                        'The ECAM AIR COND page contains the optimized temperature regulation parameters, such as duct temperature, zone temperature and trim air system indications.'),
                CusText(
                    text:
                        'The ECAM CRUISE page also contains zone temperature indications.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_mcdu);
              },
            )
          ],
        ),
      ),
    );
  }
}
