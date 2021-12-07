import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata22PresentScreen extends StatelessWidget {
  const Ata22PresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '22 - Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_22/ata22_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The Auto Flight System (AFS) is divided into four main parts:\n _ Flight Management (FM),\n _ Flight Guidance (FG),\n _ Flight Augmentation,\n _ Fault Isolation and Detection System (FIDS).\nThe first two functions are accomplished by the Flight Management and Guidance Computers (FMGCs). The other two functions are accomplished by the Flight Augmentation Computers (FACs).')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata22_present2);
              },
            )
          ],
        ),
      ),
    );
  }
}
