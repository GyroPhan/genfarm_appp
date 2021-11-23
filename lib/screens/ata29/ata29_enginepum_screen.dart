import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata29EnginePumScreen extends StatelessWidget {
  const Ata29EnginePumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '29 - Engine Pump Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_29/ata29_enginepum_loca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Engine Pump Location'),
                CusText(
                    text:
                        'The EDPs 1 and 2 are located on the accessory gearbox of engine 1 (EDP 1 green system) and engine 2 (EDP 2 yellow system).'),
                CusText(
                    text:
                        'The green reservoir is located inside the main landing gear bay. The blue reservoir is located aft of the main landing gear bay on the LH side. The yellow reservoir is located inside the yellow hydraulic bay.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata29_servicepanel_loca,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
