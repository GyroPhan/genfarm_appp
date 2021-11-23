import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32NormParkBrakeScreen extends StatelessWidget {
  const Ata32NormParkBrakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Braking'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_normparkbrake.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Braking'),
                CusText(
                    text:
                        'The normal braking system is powered by the green hydraulic system.'),
                CusText(
                    text:
                        'The alternate brake system and the parking brake are powered by the yellow hydraulic system and backed up by a brake accumulator.'),
                CusText(
                    text:
                        'All braking functions are controlled by the Braking/Steering Control Unit (BSCU).\nThese functions are:\n _Normal and alternate braking,\n _Anti-Skid (A/SKID) control,\n _Auto braking,\n _Brake temperature indication.'),
                CusText(
                    text:
                        'In manual normal braking, electrical braking orders are sent by the brake pedals to the BSCU. The BSCU energizes the normal brake selector valve allowing green pressure to supply the brakes trough the automatic selector and normal servo valves.\nDepending on manual braking orders and A/SKID regulation, the BSCU regulates the pressure delivered to each brake through the normal servo valves.\nWheel rotating speed from the tachometer, aircraft speed data and braking pressure are supplied to the BSCU for braking and A/SKID computation.'),
                CusText(
                    text:
                        'Before landing, the crew can select one of the auto brake modes MAXimum, MEDium or LOw, to obtain the optimal deceleration rate compatible with the length of the runway.\nBefore take-off, MAXimum mode must be selected in case of an aborted take-off.\nBraking starts when the ground spoilers deploy.\nDepending on the deceleration rate and the A/SKID regulation, the BSCU regulates the pressure delivered to each brake trough the normal servo valves.\nWhen the aircraft deceleration reaches a given value, the DECELerate green light on the L/G panel comes on.'),
                CusText(
                    text:
                        'In order to stop the MLG wheels rotation before entry into the L/G bay, a programmed brake pressure is sent to the normal brakes during gear retraction.\nThe N/Ws are mechanically braked at the end of the gear cycle using brake bands.'),
                CusText(
                    text:
                        'The alternate braking mode is automatically obtained in case of green pressure loss, or if a failure occurs on the normal brake system during operation.\nThe alternate braking circuit is pressurized through the automatic selector by isolating the normal brake system.\nOrders are entered by the pedals and transmitted through an auxiliary low pressure control system to the dual valve which regulates the yellow braking pressure.\nThe BSCU ensures the A/SKID regulation by controlling the alternate servo valves.\nBraking pressure is read on the triple pressure indicator.\n'),
                CusText(
                    text:
                        'The A/SKID regulation is deactivated, either electrically by setting OFF the A/SKID & N/W STeeRinG switch, BSCU failure or hydraulic low pressure (brakes being supplied by the brake accumulator only).\nThe pilot must refer to the triple pressure indicator to limit brake pressure in order to avoid locking a wheel.\nWith the accumulator pressure only, a maximum of 7 full brake pedal applications can be performed.'),
                CusText(
                    text:
                        'The parking brake system is supplied either by the yellow hydraulic pressure or by the brake accumulator.\nWhen the parking brake is activated, all other braking modes become inoperative.\nWith the parking brake handle in ON position, the parking brake control valve is open and the yellow pressure goes through the parking brake control valve, reaching the dual shuttle valve. The BSCU will deactivate the other braking modes.\nThe dual shuttle valve moves, allowing yellow pressure to the brakes through the alternate servo valves.\nThe pressure delivered to the LH and RH brakes as well as the brake accumulator pressure are indicated on the triple pressure indicator.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_normparkbrake_enhance);
              },
            )
          ],
        ),
      ),
    );
  }
}
