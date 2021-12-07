import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22AugmentionScreen extends StatelessWidget {
  const Ata22AugmentionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Augmentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_augmention.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Augmentation'),
                CusText(
                    text:
                        'The flight augmentation part fulfills the following functions:\n _ Rudder trim,\n _ Yaw damper,\n _ Rudder travel limitation,\n _ Flight envelope protection,\n _ FIDS.'),
                CusText(
                    text:
                        'For flight envelope protection, the FAC computes:\n _ The various speeds for aircraft operation (e.g. flaps limit speed),\n _ The excessive angle of attack and windshear detection,\n _ The low energy warning, indicating to the crew that the aircraft is quickly decelerating and that thrust will have to be increased to recover a positive flight path angle through pitch control.'),
                CusText(
                    text:
                        'The FIDS function is only active in FAC 1. FAC 1 is connected to the BITE of all the AFS computers and communicates to the Centralized Fault Display System (CFDS).')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_home,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
