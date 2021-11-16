import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata36OtherCompLocaScreen extends StatelessWidget {
  const Ata36OtherCompLocaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '36 - Component Location'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_36/ata36_othercomploca.png",
            ),
            InfoListWid(
              children: [
                CusText(text: 'Other Component Location'),
                CusText(
                    text:
                        'The crossbleed valve is located in the forward section of the lower fuselage belly fairing area.'),
                CusText(
                    text:
                        'Get access to the HP ground connector through a small access door located on the lower fuselage belly fairing.'),
                CusText(text: 'The APU bleed valve is located on the APU.'),
                CusText(
                    text:
                        'The APU supply duct runs along the left hand side of the fuselage to the wheel well area. It then crosses at the aircraft centerline and continues forward to be connected to the crossbleed duct in the forward belly fairing area.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata36_home,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
