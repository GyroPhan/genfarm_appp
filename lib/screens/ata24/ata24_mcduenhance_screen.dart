import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24McduEnhanceScreen extends StatelessWidget {
  const Ata24McduEnhanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '24 - Maintenance/Test Facilities Enhance'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_mcdu.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'Maintenance/Test Facilities - Enhance Electrical Power Generation System (EPGS)'),
                CusText(
                    text:
                        'In the Enhanced EPGS, the GAPCU is the interface between the GCUs and the CFDIU for test purposes and fault reporting on the MCDUs.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_home,
                    clean: true, replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
