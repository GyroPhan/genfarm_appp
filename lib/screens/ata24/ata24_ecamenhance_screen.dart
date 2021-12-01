import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24EcamEnhanceScreen extends StatelessWidget {
  const Ata24EcamEnhanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - ECAM Enhance'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_ecamenhance.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'ECAM Enhance'),
                CusText(
                    text:
                        'The AC ESS FEED P/B SW lets the pilots change the supply to the AC ESS bus from AC bus 1 to AC bus 2.'),
                CusText(
                    text:
                        'When the BUS TIE P/B SW is in AUTO position, it lets the opening or closing of the bus tie contactors in order to supply the AC 1 and AC 2 buses according to the power supply priorities.\nWhen OFF, both bus tie contactors open to isolate one side of the network from the other (e.g.: smoke configuration).'),
                CusText(
                    text:
                        'In case of failure, the IDG P/B SWs disconnect the IDG from the engine gearbox.'),
                CusText(
                    text:
                        'The GALY & CAB P/B SW lets galleys and some sub-buses be manually shed.'),
                CusText(
                    text:
                        'The COMMERCIAL P/B SW is used for the shedding of all commercial loads including the GALY & CAB related buses.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_mcdu);
              },
            )
          ],
        ),
      ),
    );
  }
}
