import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21PressEcamScreen extends StatelessWidget {
  const Ata21PressEcamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - Pressurization ECAM'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_press_ecam.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Pressurization ECAM'),
                CusText(
                    text:
                        'The crew can monitor all cabin pressure functions on the ECAM CABin PRESS page.'),
                CusText(
                    text:
                        'Some of the pressurization parameters are repeated on the ECAM CRUISE page.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_press_mcdu);
              },
            )
          ],
        ),
      ),
    );
  }
}
