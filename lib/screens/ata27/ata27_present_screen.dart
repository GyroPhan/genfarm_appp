import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27PresentScreen extends StatelessWidget {
  const Ata27PresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '27 - Flight Control Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Flight Control Presentation'),
                CusText(
                    text:
                        'All flight control surfaces are made of composite materials except for the slats which are made of aluminum alloy.\nAll flight control surfaces are electrically controlled and hydraulically operated.\nAs a back-up, the stabilizer and rudder is mechanically controlled and hydraulically operated.\nPilots use side sticks to fly the aircraft in pitch and roll.'),
                CusText(
                    text:
                        'The control is achieved through the following conventional surfaces.'),
                CusText(
                    text:
                        'Pitch control is achieved by two elevators and the Trimmable Horizontal Stabilizer (THS).\nElevators are used for short-term activity.\nThe THS is used for long-term activity.'),
                CusText(
                    text:
                        'Roll control is achieved by one aileron and spoilers 2 to 5 on each wing, numbered from wing root to wing tip.'),
                CusText(
                    text:
                        'Yaw control is fulfilled by the rudder.\nThe rudder is used during cross wind take-off and landing, and in case of engine failure (thrust asymmetry).\nThe yaw damper function controls the rudder for Dutch roll damping and turn coordination.'),
                CusText(
                    text:
                        'The speed brake function is used in flight to increase the aircraft drag. Spoilers 2 to 4 are used.\nRoll orders and speed brake orders are added with priority given to the roll function.'),
                CusText(
                    text:
                        'The ground spoiler function is used to destroy the lift during landing and in case of aborted take-off. All spoiler panels are used.'),
                CusText(
                    text:
                        'The high lift function is achieved by slats and flaps.\nThere are two flaps, inboard and outboard, and five slats on each wing, numbered from wing root to wing tip.\nThe A321 is equipped with double slotted flaps.'),
                CusText(
                    text:
                        'The aileron droop function increases the lift on the part of the wing which is not equipped which flaps.\nThe ailerons are deflected downwards when the flaps are extended.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_flybywire);
              },
            )
          ],
        ),
      ),
    );
  }
}
