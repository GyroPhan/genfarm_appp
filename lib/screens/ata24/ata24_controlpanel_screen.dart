import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24ControlPanelScreen extends StatelessWidget {
  const Ata24ControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_controlpanel.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Control Panel'),
                CusText(
                    text: 'The ELEC panel is installed on the overhead panel.'),
                CusText(
                    text:
                        'For emergency cases, there is an EMER ELEC PWR panel on the LH side of the overhead panel.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata24_ecam,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
