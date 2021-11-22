import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21AirCondiPresentScreen extends StatelessWidget {
  const Ata21AirCondiPresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '21 - Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_aircondi_present.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'The basic airflow through the pressurized part of the fuselage starts with the pneumatic system.'),
                CusText(
                    text:
                        'Hot, high pressure air is supplied to two packs. The packs are responsible for basic temperature regulation.'),
                CusText(
                    text:
                        'From the packs the air is distributed throughout the aircraft.'),
                CusText(
                    text:
                        'The pressurization system controls the airflow overboard to maintain the cabin pressurization within safe limits.'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_aircondi_airflow);
              },
            )
          ],
        ),
      ),
    );
  }
}
