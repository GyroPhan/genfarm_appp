import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24GenLocaScreen extends StatelessWidget {
  const Ata24GenLocaScreen({Key? key}) : super(key: key);

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
              url: "assets/images/ata_24/ata24_genloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The AC generators provide a 115 VAC, 3-phase, 400 Hz AC supply. The IDGs and the APU have a nominal 90 KVA power whereas the EMER GEN has a 5 kVA output.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_invertloca);
              },
            )
          ],
        ),
      ),
    );
  }
}
