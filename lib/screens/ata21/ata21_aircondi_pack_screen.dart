import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiPackScreen extends StatelessWidget {
  const Ata21AirCondiPackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - PACK'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_pack.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'The Single Aisle family is equipped with two air conditioning packs located in the wing root area forward of the landing gear bay. The packs supply dry air to the cabin for air conditioning, ventilation and pressurization.'),
                CusText(
                    text:
                        'The main component of each pack assembly is the Air Cycle Machine.'),
                CusText(
                    text:
                        'Hot air from the pneumatic system is supplied to the pack through the pack Flow Control Valve (FCV). The FCV adjusts the flow rate through the pack and is the pack shut-off valve.'),
                CusText(
                    text:
                        'The pack temperature control system controls the pack outlet temperature and sets its maximum and minimum limits. The system includes two Pack Controllers (PCs). Each PC controls one pack and has two computers, one primary and one electrically independent secondary computer. When the primary computer is operational, the system is fully functional. If the primary fails, some functions are lost as the secondary computer takes control.'),
                CusText(
                    text:
                        'During normal operation, the Zone Controller (ZC) sends the required pack outlet temperature to both PCs. To control the pack outlet temperature, the PC modulates the BYPASS VALVE and the RAM-AIR INLET doors. For maximum cooling, the ram-air doors are fully open and the bypass valve is fully closed. For maximum heating, the ram-air doors are nearly closed and the bypass valve is fully open. During takeoff and landing, the ram air inlet doors will be driven fully closed to stop the ingestion of foreign matter.'),
                CusText(
                    text:
                        'ENHANCED - PACK:\nThe ZCs and PCs are replaced by two Air Conditioning System Controllers (ACSC) 1 and 2. ACSC 1 sends the pack outlet temperature demand to pack 1. Air Conditioning System Controller 2 sends the pack outlet temperature demand to pack 2. To control the pack outlet temperature, the Air Conditioning System Controller modulates the BYPASS VALVE and the RAM-AIR INLET doors.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_zonetempregusyst);
              },
            )
          ],
        ),
      ),
    );
  }
}
