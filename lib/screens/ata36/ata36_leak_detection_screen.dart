import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata36LeakDetectionScreen extends StatelessWidget {
  const Ata36LeakDetectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '36 - Leak Detection'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_36/ata36_leakdetection.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'Leak detection loops are installed along the hot air supply ducts of the pneumatic system. The loops are made of multiple sensing elements connected in series. '),
                CusText(
                    text:
                        ' The leak detection loops are connected to the BMCs. If a leak is detected, a signal is sent to the BMC 1 or 2 which automatically isolates the affected area by closing the crossbleed valve and shutting off the engine bleed on the affected side.'),
                CusText(
                    text:
                        ' The leak detection system is organized into three loops. Here are the loops and the protected areas:\n _Pylon: from the precooler to the wing leading edge,\n _Wing: wing leading edge including the wing air inlet supply, and belly fairing (cross bleed duct, pack supply ducts and APU forward supply duct).\n _APU: APU aft supply duct (left hand side of the fuselage) from APU firewall to wheel well area'),
              ],
            ),
            NavigationBarWid(route: () {
              NavigationService.push(Routes.ata36_home,
                  replace: true, clean: true);
            }),
          ],
        ),
      ),
    );
  }
}
