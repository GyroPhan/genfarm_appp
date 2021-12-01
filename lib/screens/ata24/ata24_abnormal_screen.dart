import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24AbNormalScreen extends StatelessWidget {
  const Ata24AbNormalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Abnormal Configuration'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_abnormal.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Abnormal Configuration'),
                CusText(
                    text:
                        'The electrical system has an ESS TR, which supplies the DC ESS Bus in abnormal or emergency configuration.'),
                CusText(
                    text:
                        'In abnormal configuration (loss of TR1 or TR2) the ESS TR is supplied by the AC ESS Bus.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_emergency);
              },
            )
          ],
        ),
      ),
    );
  }
}
