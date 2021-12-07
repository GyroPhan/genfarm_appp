import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22PrimaryDisplayScreen extends StatelessWidget {
  const Ata22PrimaryDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Primary Flight Display'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_primarydisplay.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Primary Flight Display'),
                CusText(
                    text:
                        'As the main guidance instrument, the PFD displays various speeds and reference parameters used for short term flight guidance.\nThe Flight Mode Annunciator (FMA) is the top part of the PFD and indicates:\n _ The AP, FD and A/THR engagement status,\n _ The AP/FD and A/THR modes,\n _ The landing category.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_sidestick);
              },
            )
          ],
        ),
      ),
    );
  }
}
