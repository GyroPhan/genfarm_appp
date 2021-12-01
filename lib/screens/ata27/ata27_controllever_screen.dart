import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata27ControlLeverScreen extends StatelessWidget {
  const Ata27ControlLeverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '27 - Control'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_27/ata27_controllever.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Control'),
                CusText(
                    text:
                        'All the controls for the flight controls are located in the cockpit.'),
                CusText(
                    text:
                        'SIDE STICK\nThe two side sticks are used for manual pitch and roll control.\nThey are spring loaded to neutral position.\nEach side stick has a push button used for autopilot disconnection and to take priority over the other side stick.'),
                CusText(
                    text:
                        'SPEED BRAKE LEVRER\nThe speed brake lever controls the position of the speed brake surfaces and pre selection of the ground spoiler function.\nThe lever has to be pushed down and placed in the required position.\nTo arm the ground spoilers for automatic extension, the lever must be pulled UP when in the retracted position.'),
                CusText(
                    text:
                        'THS CONTROL\nThe THS is automatically trimmed during flight.\nAfter touch down, the THS is automatically trimmed to neutral position.\nThe THS mechanical control is used to set the pitch trim before take-off or when the automatic pitch trim is not available.\nTrim position is indicated in degrees on a scale adjacent to each trim wheel.'),
                CusText(
                    text:
                        'RUDDER PEDALS\nTwo sets of pedals enable the rudder mechanical control.\nThe pedals can be individually adjusted.'),
                CusText(
                    text:
                        'RUDDER TRIM\nThe rudder trim control switch operates the electrical trim actuator to move the rudder to a new neutral position.\nThe rudder trim RESET switch resets the trim position to zero.\nThe rudder trim indicator displays rudder trim position in degrees'),
                CusText(
                    text:
                        'FLAP CONTROL LEVER\nThe flap control lever selects simultaneous operation of slat and flap. It has five positions.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata27_ecam);
              },
            )
          ],
        ),
      ),
    );
  }
}
