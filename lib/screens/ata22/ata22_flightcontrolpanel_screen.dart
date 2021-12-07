import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22FlightControlPanelScreen extends StatelessWidget {
  const Ata22FlightControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Flight Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_flightcontrolpanel.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Flight Control Panel'),
                CusText(
                    text:
                        'On the two flight control (FLT CTL) panels, located on the overhead panel, there is a pushbutton to respectively disengage FAC 1 and 2.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_mcdu2);
              },
            )
          ],
        ),
      ),
    );
  }
}
