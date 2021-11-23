import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata32WheelBrakeScreen extends StatelessWidget {
  const Ata32WheelBrakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '32 - Wheels and Brakes'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_32/ata32_wheelbrake.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Wheels and Brakes'),
                CusText(
                    text:
                        'The wheels of the MLG have:\n _Carbon brakes,\n _Brake fans (optional),\n _Tire Pressure Indicating System (TPIS) sensor (optional),\n _Gear jacking pad for wheel change.'),
                CusText(
                    text:
                        'The NLG has:\n _A Nose Wheel Steering (N/WS) system,\n _A jacking pad for wheel change,\n _A TPIS sensor (optional).'),
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata32_extenretract);
              },
            )
          ],
        ),
      ),
    );
  }
}
