import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata36EngineBleedScreen extends StatelessWidget {
  const Ata36EngineBleedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '36 - Engine Bleed'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_36/ata36_enginebleed.png",
            ),
            InfoListWid(
              children: [
                CusText(
                  text:
                      'The engine bleed air is pressure and temperature regulated prior to supplying the pneumatic system. Air is bled from two engine :\nHigh Pressure Compressor (HPC) stages, (The HP bleed is only used when the engines are at low power. Once the IP bleed is sufficient, the HP valve closes.)\nthe Intermediate Pressure (IP) stage\nthe HP stage.',
                ),
                CusText(
                    text:
                        'All the engine bleed air is supplied to the pneumatic system through the main engine BLEED valve (or Pressure Regulating Valve (PRV)) which acts as a shut off and overall system pressure regulating valve. Each BMC monitors system pressure and will shut down the engine bleed in case of excessive pressure. In addition, an Overpressure Valve (OPV) is installed downstream from the bleed valve to protect the system in case of overpressure'),
                CusText(
                    text:
                        'The temperature of the engine bleed air is regulated to a maximum value. The hot bleed air goes through an air-to-air heat exchanger called the precooler. Fan discharge air modulated by the Fan Air Valve (FAV), blows across the pre-cooler to maintain the temperature within limits.'),
                CusText(
                    text:
                        'The left and right bleed systems are connected by a crossbleed duct. A crossbleed valve enables their interconnection or isolation.'),
                CusText(
                    text:
                        'The APU can also be used for bleed air supply. This is usually done on the ground for air conditioning and for engine start.'),
                CusText(
                    text:
                        'However, APU BLEED air could also be used in flight, depending on altitude. The APU bleed supply is connected to the left side of the crossbleed duct.'),
                CusText(
                    text:
                        'On the ground, a HP ground power unit can be connected to the left side pneumatic system. The right side may be supplied by opening the crossbleed valve.'),
              ],
            ),
            NavigationBarWid(route: () {
              NavigationService.push(Routes.ata36_leakdetection);
            })
          ],
        ),
      ),
    );
  }
}
