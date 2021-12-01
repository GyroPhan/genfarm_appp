import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24ExternalLocaScreen extends StatelessWidget {
  const Ata24ExternalLocaScreen({Key? key}) : super(key: key);

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
              url: "assets/images/ata_24/ata24_externalloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The Ground Power Control Panel and the external power receptacle are installed in front of the nose landing gear.\nOn this panel, 2 Lights indicate the Ground Power Unit availability (AVAIL light) and connection to the A/C network (NOT IN USE light).\nThe Ground Power Unit should supply 400 Hz 3 phase 115 VAC rated at 90 kVA minimum.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_maintloca);
              },
            )
          ],
        ),
      ),
    );
  }
}
