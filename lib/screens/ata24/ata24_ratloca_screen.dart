import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24RatLocaScreen extends StatelessWidget {
  const Ata24RatLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - RAT & Emergency Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_ratloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'RAT & Emergency Panel'),
                CusText(
                    text:
                        'The EMER GEN TEST P/B is used on ground to test the EMERgency GENerator or the Static Inverter.'),
                CusText(
                    text:
                        'In avionics smoke condition, the GEN 1 LINE P/B disconnects the generator 1 from the busbar but the generator remains exited to supply some fuel pumps.'),
                CusText(
                    text:
                        'When AC BUS 1 and 2 are no longer supplied, the RAT will extend automatically to pressurize the blue hydraulic system, which powers the EMER GEN, if the A/C speed is sufficient.'),
                CusText(
                    text:
                        'WARNING: ACTIVATION OF THE RED GUARDED MAN ON PUSHBUTTON ON THE GROUND OR IN FLIGHT WILL EXTEND THE RAM AIR TURBINE (RAT), EVEN ON COLD AIRCRAFT.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_genloca);
              },
            )
          ],
        ),
      ),
    );
  }
}
