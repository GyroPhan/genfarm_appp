import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32PresentScreen extends StatelessWidget {
  const Ata32PresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Landing Gear Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Landing Gear Presentation'),
                CusText(
                    text:
                        'The A320 aircraft family has a LH and RH dual wheel Main Landing Gear (MLG) and a dual wheel Nose Landing Gear (NLG).\nThe MLG retracts inboard into the MLG wheel well and the NLG retracts forward into the NLG wheel well. The Landing Gears (L/Gs) are hydraulically operated and electrically controlled. Each L/G has hydraulically and mechanically operated doors. Each L/G has a shock absorber.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_ldgdoor);
              },
            )
          ],
        ),
      ),
    );
  }
}
