import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiPackControlPanelScreen extends StatelessWidget {
  const Ata21AirCondiPackControlPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - PACK Control Panel'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_packcontrolpanel.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'On the overhead panel, the AIR COND panel is used by the pilot to control the air conditioning system. This panel contains the PACK switches, the zone temperature selectors, the PACK FLOW control, and the HOT AIR control switch.'),
                CusText(
                    text:
                        'On the overhead, the VENTILATION panel contains the CAB FANS pushbutton switch. The switch is used to select the recirculation fans OFF.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_ecam);
              },
            )
          ],
        ),
      ),
    );
  }
}
