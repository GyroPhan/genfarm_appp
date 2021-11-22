import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiMcduScreen extends StatelessWidget {
  const Ata21AirCondiMcduScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - MCDU'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_mcdu.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'The ZC is the interface between the PCs and the Centralized Fault Display Interface Unit (CFDIU) for test purposes and fault reporting. The ZC test on the Multipurpose Control and Display Units (MCDUs) initiates a complete air conditioning test including the packs.'),
                CusText(
                    text:
                        'The ACSC are connected to the CFDIU for test purposes and fault reporting, available on the MCDU.')
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
