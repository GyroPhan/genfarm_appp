import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32ExtenRetractScreen extends StatelessWidget {
  const Ata32ExtenRetractScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Extension and Retraction'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_extenretract.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Extension and Retraction'),
                CusText(
                    text:
                        'The L/G extension and retraction is controlled from the L/G control lever located in the cockpit.'),
                CusText(
                    text:
                        'The gear up and down sequence is controlled by two computers called Landing Gear Control and Interface Unit (LGCIU) 1 and 2. Only one LGCIU is in command while the other LGCIU is in standby. With any up selection the LGCIU in command will change and control a complete gear cycle.'),
                CusText(
                    text:
                        'The gear up and down position and the door close and open position are monitored by proximity detectors.\nIn case of failure of a LGCIU or a proximity detector, the other LGCIU will be in command.'),
                CusText(
                    text:
                        'An interlock mechanism prevents unsafe retraction by locking the control lever in the down position when any shock absorber is not extended.\nThe Nose Wheel (N/W) is automatically centered when the shock absorber is extended.'),
                CusText(
                    text:
                        'The L/G is powered by the green hydraulic system. At high air speed a safety valve cuts hydraulic supply to the L/G system.'),
                CusText(
                    text:
                        'In case of failure, the gear can be extended mechanically from the cockpit by means of a free fall extension handle. During free fall extension, a cut-out valve will close to cut the L/G hydraulic supply.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_normparkbrake);
              },
            )
          ],
        ),
      ),
    );
  }
}
