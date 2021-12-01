import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24BatOnlyScreen extends StatelessWidget {
  const Ata24BatOnlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Battery Only Configuration'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_batonly.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Battery Only Configuration'),
                CusText(
                    text:
                        'In emergency configuration with emergency generator not available, BAT 1 supplies the AC ESS BUS via the static inverter and BAT 2 supplies the DC ESS BUS.')
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
