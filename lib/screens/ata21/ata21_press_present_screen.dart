import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21PressPresentScreen extends StatelessWidget {
  const Ata21PressPresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '21 - Pressurization System Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_press_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Pressurization System Presentation'),
                CusText(
                    text:
                        'The pressurization system on the Single Aisle (SA) family normally operates automatically to adjust the cabin altitude and rate of climb to ensure maximum passenger comfort and safety.'),
                CusText(
                    text:
                        'The pressurized areas are:\n _The cockpit,\n _The avionics bay,\n _The cabin,\n _The cargo compartments.'),
                CusText(
                    text:
                        'The concept of the system is simple. Air is supplied from the air conditioning packs to the pressurized areas.'),
                CusText(
                    text:
                        'An outflow valve is used to regulate the amount of air allowed to escape from the pressurized areas.'),
                CusText(
                    text:
                        'Automatic control of the outflow valve is provided by two Cabin Pressure Controllers (CPCs). Each CPC controls one electric motor on the outflow valve assembly. The CPC interface with other A/C computers to optimize the pressurization/depressurization schedule.'),
                CusText(
                    text:
                        'There are two automatic pressurization systems. Each CPC and its electric motor make one system. Only one system operates at a time with the other system acting as backup in case of a failure. The system in command will alternate each flight.'),
                CusText(
                    text:
                        'A third motor is installed for manual operation of the outflow valve in case both automatic systems fail.'),
                CusText(
                    text:
                        'To protect the fuselage against excessive cabin differential pressure, safety valves are installed on the rear pressure bulkhead. The safety valves also protect against negative differential pressure')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_press_menu,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
