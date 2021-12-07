import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22SideStickScreen extends StatelessWidget {
  const Ata22SideStickScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Side Sticks'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_sidestick.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Side Sticks'),
                CusText(
                    text:
                        'Two side sticks are respectively located on the CAPT lateral panel and F/O lateral panel.'),
                CusText(
                    text:
                        'When the AP is engaged, the side sticks are locked in the neutral position, by solenoids.\nThe AP is disengaged, and the side sticks become free, when the red TAKEOVER & PRIORITY pushbutton on any side stick is pressed or when a force above a certain threshold is applied on any side stick.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_thrustlever);
              },
            )
          ],
        ),
      ),
    );
  }
}
