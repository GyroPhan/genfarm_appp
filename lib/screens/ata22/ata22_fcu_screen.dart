import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22FcuScreen extends StatelessWidget {
  const Ata22FcuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Flight Control Unit (FCU)'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_fcu.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Flight Control Unit (FCU)'),
                CusText(
                    text:
                        'A FCU is installed on the glareshield.\nThe FCU front face includes an AFS control panel between two EFIS control panels.'),
                CusText(
                    text:
                        'The AFS control panel allows and displays the AP and A/THR engagement, and the selection of guidance modes and flight parameters.'),
                CusText(
                    text:
                        'Each pilot has an EFIS control panel to select the display on his related EFIS screens.'),
                CusText(
                    text:
                        'Speed, lateral guidance and level change can be selected by the pilot after a "pull" action or managed by the flight management after a "push" action. In that case, the parameter window shows dashes (- - - -) and a white dot will indicate that the reference is managed.\nAn exception to this rule is when the V/S - FPA knob is pushed, a level off is immediately commanded.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_efisdisplay);
              },
            )
          ],
        ),
      ),
    );
  }
}
