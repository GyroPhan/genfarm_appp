import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32NormParkBrakeEnhanceScreen extends StatelessWidget {
  const Ata32NormParkBrakeEnhanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Braking Enhance'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_normparkbrake_enhance.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Braking - Enhance'),
                CusText(
                    text:
                        'There are two braking modes:\n _Normal braking,\n _Alternate braking.'),
                CusText(
                    text:
                        'The normal brake system is nearly the same as for classic braking with a different BSCU part number and a new normal servo valve. When there is no braking order, the servo valve is fully closed.'),
                CusText(
                    text:
                        'The alternate brake system is powered by the yellow hydraulic system and backed up by a brake accumulator.'),
                CusText(
                    text:
                        'The alternate braking with A/SKID is electrically controlled by the Alternate Braking Control Unit (ABCU) via the BSCU.\nThe ABCU becomes active when the normal brake system is faulty and/or low hydraulic pressure in the green system. The information comes from the BSCU.\nBraking inputs are given by the brake pedals and transmitted through the Alternate Brake Pedal Transmitter Unit to the ABCU which will control the braking pressure.\nThe braking data are sent to the BSCU for A/SKID protection.\nThe braking pressure is read on the triple indicator.'),
                CusText(
                    text:
                        'The A/SKID regulation is disconnected, either electrically by setting OFF the A/SKID & N/W STeeRinG switch, BSCU failure or hydraulic low pressure (brakes being supplied by the brake accumulator only).\nThe pilot must refer to the triple pressure indicator to limit brake pressure in order to avoid locking a wheel.\nWith the accumulator pressure only, a maximum of 7 full brake pedal applications can be done.'),
                CusText(
                    text:
                        'The yellow hydraulic system or the brake accumulator supply brake pressure via the shuttle valves.\nPutting ON the parking brake, the other braking modes and the A/SKID system are deactivated.\nAlternate Direct Drive Valve (DDV) open to allow the application off full pressure.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_steering);
              },
            )
          ],
        ),
      ),
    );
  }
}
