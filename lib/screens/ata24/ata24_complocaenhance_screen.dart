import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24CompLocaEnhanceScreen extends StatelessWidget {
  const Ata24CompLocaEnhanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Component Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_complocaenhance.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'In the Enhanced Electrical Power Generation System (Enhanced EPGS), the GPCU is replaced by a Ground and Auxiliary Power Control Unit (GAPCU). The GAPCU controls the APU GEN and the external power. The EGIUs are deleted and their function is integrated into GCU 1 and 2.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_trloca);
              },
            )
          ],
        ),
      ),
    );
  }
}
