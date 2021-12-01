import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27ActuatorWingLocaScreen extends StatelessWidget {
  const Ata27ActuatorWingLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Actuator Wing Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_actuatorwingloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Actuator Wing Location'),
                CusText(
                    text:
                        'The Aileron surface is powered by two servo controls.\nEach Spoiler surface is powered by a single servo control.\nThe Flaps and Slats surfaces are powered by their dedicated PCU.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_actuatorthsloca);
              },
            )
          ],
        ),
      ),
    );
  }
}
