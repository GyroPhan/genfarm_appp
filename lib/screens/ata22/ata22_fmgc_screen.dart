import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22FmgcScreen extends StatelessWidget {
  const Ata22FmgcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '22 - Flight Management/Flight Guidance'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_fmgc.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Flight Management/Flight Guidance'),
                CusText(
                    text:
                        'The FM part has several functions linked to the flight plan such as lateral and vertical guidance associated with performance computation.'),
                CusText(
                    text:
                        'The FG part has 3 functions:\n _ Autopilot (AP),\n _ Flight Director (FD),\n _ Autothrust (A/THR).'),
                CusText(
                    text:
                        'The FMGC functions, FM and FG are controlled from the MCDUs and the Flight Control Unit (FCU).\nBasically, the MCDUs provide the long term interface between the crew and the FMGCs (e.g. flight plan selection and modification) while the FCU provides the short term interface (e.g. engagement of the autopilot, flight director and A/THR functions).'),
                CusText(
                    text:
                        'Besides the MCDUs and the FCU, the main displays presenting Flight Management and Guidance information are the EFIS displays.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_autopilot);
              },
            )
          ],
        ),
      ),
    );
  }
}
