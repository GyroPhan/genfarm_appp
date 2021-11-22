import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiZoneTempReguSystScreen extends StatelessWidget {
  const Ata21AirCondiZoneTempReguSystScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '21 - Zone Temperature Regulation System'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_zonetempregusyst.png",
            ),
            InfoListWid(
              children: [
                CusText(text: 'Zone Temperature Regulation System'),
                CusText(
                    text:
                        'The packs supply the mixer unit. Three separate aircraft zones are supplied from the mixer unit:\n _Cockpit,\n _Forward cabin,\n _Aft cabin.'),
                CusText(
                    text:
                        'Two cabin recirculation fans are installed to reduce the bleed air demand and therefore save fuel. These fans establish a recirculation flow of air from the cabin zones to the mixer unit. In normal operation, there are no ECAM indications associated with the cabin fans.'),
                CusText(
                    text:
                        'The ZC controls and monitors the temperature regulation system for the cabin zones. On the overhead AIR COND panel, the flight crew selects the desired individual compartment temperature.'),
                CusText(
                    text:
                        'The hot air system for cabin temperature control has a hot air valve and trim air valves controlled by the ZC. The ZC compares the demand to the actual temperature in each zone.\nThe ZC then sends the pack outlet temperature demand to both PCs to satisfy the coldest demand.'),
                CusText(
                    text:
                        'For the zones, which require warmer temperature, the ZC signals the TRIM VALVES to open. Hot air mixes with the pack discharge air and the temperature increases. In the case of any duct overheat, the hot air valve and the trim air valves will automatically close to isolate the system. The system can be reset when the overheat disappears.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                    Routes.ata21_aircondi_zonetempregusystenhan);
              },
            )
          ],
        ),
      ),
    );
  }
}
