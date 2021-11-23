import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32SteerControlScreen extends StatelessWidget {
  const Ata32SteerControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Steer Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_steercontrol.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Steer Control Panel'),
                CusText(
                    text:
                        'N/WS control:\n _Rudder/steering pedals,\n _N/WS hand wheels.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_home,
                    clean: true, replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
