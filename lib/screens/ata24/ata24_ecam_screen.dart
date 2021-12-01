import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24EcamScreen extends StatelessWidget {
  const Ata24EcamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - ECAM'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_ecam.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'Here is the ELEC ECAM page in normal configuration with main generators supplying the entire network.'),
                CusText(
                    text:
                        'The battery voltage can be monitored either on the overhead panel or the ECAM page. Each battery is controlled by a P/B Switch (SW).'),
                CusText(
                    text:
                        'Both main generators and the APU generator are controlled by their associated P/B SW.'),
                CusText(
                    text: 'The external power is also controlled by a P/B SW.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata24_ecamenhance,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
