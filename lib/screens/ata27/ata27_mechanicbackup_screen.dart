import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27MechanicBackUpScreen extends StatelessWidget {
  const Ata27MechanicBackUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Mechanical Back-up'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_mechanicbackup.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Mechanical Back-up'),
                CusText(
                    text:
                        'The mechanical back-up lets the aircraft be controlled during a temporary complete loss of electrical power or flight controls computers.\nLongitudinal control is achieved using the trim wheels to control the THS, as the elevators are kept at zero deflection.'),
                CusText(
                    text:
                        'Lateral control is achieved from the rudder pedals.\nHydraulic power is still needed to operate the surfaces of the THS and the Rudder.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_slatflap);
              },
            )
          ],
        ),
      ),
    );
  }
}
