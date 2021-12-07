import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22EfisDisplayScreen extends StatelessWidget {
  const Ata22EfisDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - EFIS Displays'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_efisdisplay.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'EFIS Displays'),
                CusText(
                    text:
                        'Four EFIS displays, i.e. two PFDs and two NDs, are located on the main instrument panel.\nFlight parameters are displayed on the PFDs while the flight plan and navigation data are displayed on the NDs.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_primarydisplay);
              },
            )
          ],
        ),
      ),
    );
  }
}
