import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata29ElecPumLocaScreen extends StatelessWidget {
  const Ata29ElecPumLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '29 - PTU/ELEC PUMPS/RAT Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_29/ata29_elecpum_loca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'PTU/ELEC PUMPS/RAT Location'),
                CusText(
                    text:
                        'The PTU is located in the main landing gear bay. The blue electric pump and the RAT are located in the blue hydraulic bay and the yellow electric pump is located in the yellow hydraulic bay.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata29_enginepum_loca,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
