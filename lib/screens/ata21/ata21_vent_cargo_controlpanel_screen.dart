import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentCargoControlPanelScreen extends StatelessWidget {
  const Ata21VentCargoControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '21 - Cargo Control Panel Ventilation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_cargo_controlpanel.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: ' Cargo Control Panel Ventilation'),
                CusText(
                    text:
                        'On the cockpit overhead panel, the CARGO HEAT panel contains the controls associated with cargo ventilation and heating. Again, based on the customer options, several variations may be found: ventilation in either one compartment or both, or ventilation and heating in one compartment or both.'),
                CusText(
                    text:
                        'For each ventilated cargo compartment there is an ISOLATION VALVE P/B switch that controls the isolation valves. In the auto position the cargo VC will automatically open and close the isolation valves.'),
                CusText(
                    text:
                        'In case of cargo smoke detected, the cargo ventilation controller will automatically close the related isolation valves.'),
                CusText(
                    text:
                        'For each heated compartment, the temperature selectors signal the associated Cargo Heating Controller to move the trim air valves to adjust the temperature of the air entering the compartment.'),
                CusText(
                    text:
                        'The forward cargo trim air system is fed from the cabin hot air valve but the HOT AIR P/B switch controls the aft cargo compartment hot air valve.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_vent_cargo_ecam);
              },
            )
          ],
        ),
      ),
    );
  }
}
