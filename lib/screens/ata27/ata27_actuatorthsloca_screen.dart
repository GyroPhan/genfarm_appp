import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27ActuatorThsLocaScreen extends StatelessWidget {
  const Ata27ActuatorThsLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Actuator THS Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_actuatorthsloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Actuator THS Location'),
                CusText(
                    text:
                        'The Rudder surface is powered by 3 servo controls.\nThe THS is moved by one actuator.\nThe Elevator surface is powered by two servo controls.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_comploca);
              },
            )
          ],
        ),
      ),
    );
  }
}
