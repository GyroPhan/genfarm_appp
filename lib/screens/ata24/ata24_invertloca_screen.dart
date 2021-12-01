import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24InvertLocaScreen extends StatelessWidget {
  const Ata24InvertLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Component Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_invertloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The static inverter converts the direct current from battery 1 into an AC current if no other source is available.\nThe Battery Charge Limiters (BCLs) control the battery coupling and uncoupling to the DC BATTERY BUS to ensure battery charging and protection.Each battery is rated at 24 V with a capacity of 23 Ah. All TRs are identical and interchangeable.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_comploca);
              },
            )
          ],
        ),
      ),
    );
  }
}
