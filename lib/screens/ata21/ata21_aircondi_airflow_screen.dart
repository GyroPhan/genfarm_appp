import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiAirFlowScreen extends StatelessWidget {
  const Ata21AirCondiAirFlowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - Air Flow'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_airflow.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'The pneumatic system supplies air to each pack. The packs are responsible for BASIC temperature regulation.\nTemperature regulated pack discharge air is sent to the mixer unit.\nAt the mixer unit, the air is mixed with air re-circulated from the main cabin. This reduces the overall bleed demand and saves fuel.\nFrom the mixer, the air is distributed to the cockpit and the forward and aft cabin zones.'),
                CusText(
                    text:
                        'Some of the air from the pneumatic system is used for the OPTIMIZED temperature regulation system. This hot air is mixed with the air from the mixer to adjust the temperature in each zone independently.\nThe air is distributed throughout the cabin and finally, discharged overboard through the outflow valve to maintain pressurization.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_pack);
              },
            )
          ],
        ),
      ),
    );
  }
}
