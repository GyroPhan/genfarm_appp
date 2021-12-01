import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27ControlLawScreen extends StatelessWidget {
  const Ata27ControlLawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Flight Control Laws'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_controllaw.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Flight Control Laws'),
                CusText(
                    text:
                        'The Electrical Flight Control System (EFCS) computers convert pilot inputs into aircraft control objectives.\nThe computers calculate the control laws that are used to compute the surface deflections.\nThe system has a high degree of redundancy and it will reconfigure itself when failures occur.'),
                CusText(
                    text:
                        'In normal condition, the normal law is used to compute the surface deflection orders.\nNormal laws provide full flight phase envelope protection. This means that the aircraft will be protected from excessive maneuvers during all flight phases.'),
                CusText(
                    text:
                        'The alternate law is automatically introduced as soon as the normal law is lost due to system failures.\nThe alternate law gives reduced protection.'),
                CusText(
                    text:
                        'The direct law is automatically introduced when further failures occur.\nIn direct law all protections are lost. There is a direct relationship between the side stick orders and the surface.\nThe direct law is automatically activated on ground.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_mechanicbackup);
              },
            )
          ],
        ),
      ),
    );
  }
}
