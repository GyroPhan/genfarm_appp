import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21PressLocaScreen extends StatelessWidget {
  const Ata21PressLocaScreen({Key? key}) : super(key: key);

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
              url: "assets/images/ata_21/ata21_press_loca.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Component Location'),
                CusText(
                    text:
                        'Two safety valves are installed on the pressure bulkhead at the rear of the cabin.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_press_menu,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
