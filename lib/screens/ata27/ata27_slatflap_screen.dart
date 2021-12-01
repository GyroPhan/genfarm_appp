import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27SlatFlapScreen extends StatelessWidget {
  const Ata27SlatFlapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Slat and Flap System'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_slatflap.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Slat and Flap System'),
                CusText(
                    text:
                        'The slats and flaps are electrically controlled and hydraulically operated.\nTwo SFCCs ensure control and monitoring. Each computer has one slat and one flap channel.\nThe slat and flap systems are similar.'),
                CusText(
                    text:
                        'Each system is driven by a Power Control Unit (PCU) with two hydraulic motors coupled by a differential gearbox.\nThen torque shafts and gearboxes transmit the mechanical power to the actuators which drive the surfaces.'),
                CusText(
                    text:
                        'Each motor is powered by a different hydraulic system and has its own valve block and Pressure Off Brake (POB).\nValve blocks control the direction of rotation and the speed of their related PCU output shaft.\nThe POB locks the transmission when the slat and flap surfaces have reached the selected position or if hydraulic power fails.'),
                CusText(
                    text:
                        'Wing Tip Brakes (WTBs) are provided in order to stop and lock the system when major failures are detected. They are hydraulically activated and can only be reset on ground.'),
                CusText(
                    text:
                        'Position Pick-Off Units (PPUs) send slat and flap position feedback to the SFCCs and ECAM.'),
                CusText(
                    text:
                        'Flap sensors installed between inboard and outboard flaps inhibit further flap operation when a flap attachment failure is detected.\nThe signal is sent to the SFCCs via the Landing Gear Control and Interface Units (LGCIU)\nTo prevent an aircraft stall, slats cannot be fully retracted at high angles of attack or low speeds (Alpha/speed lock function).')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_home,
                    clean: true, replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
