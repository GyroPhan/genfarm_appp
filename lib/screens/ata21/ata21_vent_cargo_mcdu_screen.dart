import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentCargoMcduScreen extends StatelessWidget {
  const Ata21VentCargoMcduScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - Cargo MCDU Ventilation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_cargo_mcdu.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Cargo MCDU Ventilation'),
                CusText(
                    text:
                        'The two cargo heating controllers and the cargo VC are connected to the Centralized Fault Display Interface Unit (CFDIU) for test purposes and fault reporting.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_vent_menu,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
