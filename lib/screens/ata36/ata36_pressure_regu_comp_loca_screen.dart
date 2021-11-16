import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata36PressureReguCompLocaScreen extends StatelessWidget {
  const Ata36PressureReguCompLocaScreen({Key? key}) : super(key: key);

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
              url: "assets/images/ata_36/ata36_pressureregucomploca.png",
            ),
            InfoListWid(
              children: [
                CusText(text: 'Pressure Regulation Component Location'),
                CusText(
                    text:
                        'The main components of the fuel system are located on the engines and in the pylons.'),
                CusText(
                    text:
                        'The pressure regulation components are located on the engines:\n _The Engine High Pressure Valve (HPV),\n _The Engine BLEED PRV,\n The OPV.'),
                CusText(
                    text:
                        'The temperature regulation components are located on the engines and in the pylons:\n _The FAV,\n _The Precooler.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(
                  Routes.ata36_othercomploca,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
