import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentPresentScreen extends StatelessWidget {
  const Ata21VentPresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - Ventilation Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Ventilation Presentation'),
                CusText(
                    text:
                        'There are two ventilation systems on the Single Aisle (SA) family, avionics ventilation and lavatory and galley ventilation.'),
                CusText(
                    text:
                        'The avionics ventilation system supplements the air conditioning system to supply cooling air to the avionics equipment. This equipment includes the avionics compartment, the flight deck instruments and the circuit breaker panels.'),
                CusText(
                    text:
                        'A blower fan and an extraction fan circulate the air through the avionics equipment.\nNote: these fans operate continuously as long as the A/C electrical system is supplied.'),
                CusText(
                    text:
                        'The Avionics Equipment Ventilation Computer (AEVC) controls the fans and the configuration of the skin valves in the avionics ventilation system based on flight/ground logic and fuselage skin temperature.'),
                CusText(
                    text:
                        'There are 3 configurations for the skin air inlet and outlet valves:\n _Open circuit: both valves open (on ground only),\n _Closed circuit: both valves closed (in flight or low outside air temperature on ground). The air is cooled in the skin heater exchanger. The skin heat exchanger is a chamber which lets the air contact the fuselage skin in flight,\n _Intermediate circuit: inlet closed, outlet partially open (smoke removal in flight or low ventilation airflow condition).')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_vent_lavagallley);
              },
            )
          ],
        ),
      ),
    );
  }
}
