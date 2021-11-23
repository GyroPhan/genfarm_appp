import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata29EcamScreen extends StatelessWidget {
  const Ata29EcamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '29 - ECAM'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_29/ata29_ecam.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The items displayed on the ECAM hydraulic page are:\n _Reservoirs,\n _Fire shut-off valves,\n _Pumps,\n _RAT,\n _PTU,\n _Pressure indications.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata29_home,
                    clean: true, replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
