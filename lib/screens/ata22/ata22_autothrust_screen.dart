import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22AutoThrustScreen extends StatelessWidget {
  const Ata22AutoThrustScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '22 - Flight Management/Flight Guidance - Auto Thrust'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_autothrust.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text: 'Flight Management/Flight Guidance - Auto Thrust'),
                CusText(
                    text:
                        'The A/THR system fulfills the following functions through the control of the thrust:\n _ Speed or mach hold (either FMGCs computed or from throttle levers position),\n _ Thrust hold (either FMGS computed or from throttle lever position),\n _ Thrust reduction during descent and during flare in final approach,\n _ Protection against insufficient speed linked to excessive angle of attack.\nTo fulfill the A/THR functions, the FMGCs communicate with the Full Authority Digital Engine Control (FADEC) via the FCU and the Engine Interface Units (EIUs).')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_augmention);
              },
            )
          ],
        ),
      ),
    );
  }
}
