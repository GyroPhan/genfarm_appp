import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentLavaGalleyScreen extends StatelessWidget {
  const Ata21VentLavaGalleyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context,
          title: '21 - Lavatory and Galley Ventilation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_lavagalley.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Lavatory and Galley Ventilation'),
                CusText(
                    text:
                        'The lavatory and galley ventilation system is completely automatic.\nConditioned cabin air is supplied through the lavatory and galley areas and is removed from these areas by an extraction fan. The fan pulls air through the ceiling into an extraction duct. The air is then discharged overboard through the outflow valve.\nNote: the extraction fan runs continuously, provided electrical power is available.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata21_vent_cargo_present,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
