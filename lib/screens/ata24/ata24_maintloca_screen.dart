import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24MaintLocaScreen extends StatelessWidget {
  const Ata24MaintLocaScreen({Key? key}) : super(key: key);

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
              url: "assets/images/ata_24/ata24_maintloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The MAINTenance BUS SW, located on the forward cabin Circuit Breaker (C/B) panel, lets the AC and DC service buses be supplied without energizing the whole A/C electrical network.\nThe aft cabin C/B panel contains only C/Bs.')
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
