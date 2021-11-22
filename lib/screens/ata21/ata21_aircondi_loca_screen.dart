import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiLocaScreen extends StatelessWidget {
  const Ata21AirCondiLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - Component Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_loca.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The left and right packs are located in the air conditioning bay. The air conditioning bay is located in the unpressurized belly fairing forward of the wheel well on the lower fuselage. The belly fairing has inlets for pack and compartment cooling.'),
                CusText(
                    text:
                        'The packs supply air to the mixer unit. The mixer unit is installed at the rear of the forward cargo compartment. It mixes air from the packs and re-circulated air from the cabin prior to distribution to each zone.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_menu,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
