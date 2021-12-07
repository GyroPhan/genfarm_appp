import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22CompLocaScreen extends StatelessWidget {
  const Ata22CompLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Computers Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_comploca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Computers Location'),
                CusText(
                    text:
                        'The AFS computers are located in the aft avionics rack (80VU).')
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
