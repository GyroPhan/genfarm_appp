import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentCargoFwdLocaScreen extends StatelessWidget {
  const Ata21VentCargoFwdLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '21 - FWD Cargo Ventlation Component Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_cargo_fwdloca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'FWD Cargo Ventlation Component Location'),
                CusText(
                    text:
                        'The isolation valves and extract fans of the forward cargo compartment ventilation system are located behind the compartment sidewall panels. The air inlets and outlets are protected by grills.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata21_vent_cargo_aftloca,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
