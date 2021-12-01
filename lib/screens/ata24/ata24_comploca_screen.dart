import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24CompLocaScreen extends StatelessWidget {
  const Ata24CompLocaScreen({Key? key}) : super(key: key);

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
              url: "assets/images/ata_24/ata24_comploca.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The Ground Power Control Unit (GPCU) connects the external power to the A/C network if all parameters are within the limits.\nIt is also the central unit connected to the Centralized Fault Display Unit for on-board maintenance purposes.\nThe Electrical Generation Interface Units (EGIUs) used by the ECAM to display the AC electrical power parameters.\nThe Generator Control Units (GCUs) protect and control the A/C network and generators.\nThe main C/B panels are located in the cockpit.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_complocaenhance);
              },
            )
          ],
        ),
      ),
    );
  }
}
