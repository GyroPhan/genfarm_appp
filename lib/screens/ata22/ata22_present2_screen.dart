import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22Present2Screen extends StatelessWidget {
  const Ata22Present2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_present2.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The AFS calculates the position of the aircraft using several aircraft sensors.'),
                CusText(
                    text:
                        'In addition, the system has the capability of storing flight plans in its memory, which are predetermined by the airline. A flight plan describes a complete flight from departure to arrival, it includes vertical information and all intermediate waypoints. Knowing the position of the aircraft and the desired flight plan (chosen by the pilot), the AFS is able to compute the orders sent to the flight controls and engines so that the aircraft can follow the flight plan.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_fmgc);
              },
            )
          ],
        ),
      ),
    );
  }
}
