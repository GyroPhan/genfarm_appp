import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22Mcdu2Screen extends StatelessWidget {
  const Ata22Mcdu2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '22 - Maintenance/Test Facilities'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_mcdu2.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Maintenance/Test Facilities'),
                CusText(
                    text:
                        'Using the MCDU, you can have access to the CFDS fault messages of the AFS.\nThe BITE of each AFS computer including FCU and MCDUs, can be interrogated via the FAC 1. AFS TEST and LAND TEST can be launched from the MCDUs.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_home,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
