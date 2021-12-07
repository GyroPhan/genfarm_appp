import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22ThurstLeverScreen extends StatelessWidget {
  const Ata22ThurstLeverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Throttle Levers'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_thrustlever.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Throttle Levers'),
                CusText(
                    text:
                        'The engines are manually controlled by throttle levers, which are located on the center pedestal, or automatically controlled by the A/THR system. Two red INSTINCTIVE DISCONNECT pushbuttons, located on the throttle levers, allow the A/THR function to be disengaged (push either one). Note that the throttle levers never move automatically.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_flightcontrolpanel);
              },
            )
          ],
        ),
      ),
    );
  }
}
