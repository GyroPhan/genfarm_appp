import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiZoneTempReguSystEnhanScreen extends StatelessWidget {
  const Ata21AirCondiZoneTempReguSystEnhanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '21 - Enhance Zone Temperature Regulation System'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url:
                  "assets/images/ata_21/ata21_aircondi_zonetempregusystenhan.png",
            ),
            InfoListWid(
              children: [
                CusText(text: 'Enhance Zone Temperature Regulation System'),
                CusText(
                    text:
                        'The Air Conditioning System Controllers (ACSC) control and monitor the temperature regulation system for the cabin zones. On the overhead AIR COND panel, the flight crew selects the desired individual compartment temperature. The Air Conditioning System Controller compares the demand to the actual temperature in each zone.'),
                CusText(
                    text:
                        'Air Conditioning System Controller 1 monitors the temperature of the flight deck zone and sends the pack outlet temperature demand to pack 1. Air Conditioning System Controller 2 monitors the temperature of the forward and aft cabins and sends the pack outlet temperature demand to pack 2.'),
                CusText(
                    text:
                        'The trim air Pressure Relief Valve (PRV) and the trim air valves are controlled by the Air Conditioning System Controllers. In the case of any duct overheat, the Trim air PRV and the trim air valves will automatically close to isolate the system. The system can be reset when the overheat disappears.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_menu,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
