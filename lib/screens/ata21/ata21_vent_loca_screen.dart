import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentLocaScreen extends StatelessWidget {
  const Ata21VentLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '21 - Ventlation Component Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_loca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Ventlation Component Location'),
                CusText(
                    text:
                        'The skin air inlet valve is located on the LH side of the fuselage.'),
                CusText(
                    text:
                        'The skin air outlet valve is on the RH side of the fuselage. A small auxiliary flap will open for the intermediate circuit configuration. This is thought to be the partially open position.'),
                CusText(
                    text:
                        'Both skin valves have a manual override and deactivation device.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata21_vent_cargo_fwdloca,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
