import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32CompLocaScreen extends StatelessWidget {
  const Ata32CompLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Computer Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_comploca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Computer Location'),
                CusText(
                    text:
                        'The L/G computers are located in the forward avionics bay.\nNote that the Tire Pressure Indication Unit (TPIU) is an option.'),
                CusText(
                    text:
                        'On the enhanced versions, an ABCU is added and the BSCU is replaced.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_gear_loca);
              },
            )
          ],
        ),
      ),
    );
  }
}
