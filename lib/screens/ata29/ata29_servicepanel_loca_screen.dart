import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata29ServicePanelLocaScreen extends StatelessWidget {
  const Ata29ServicePanelLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '29 - Service Panel Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_29/ata29_servicepanel_loca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Service Panel Location'),
                CusText(
                    text:
                        'The hydraulic servicing panels are located aft of the main landing gear bay; the green and the blue panels on the LH side, and the yellow panel on the RH side.')
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
