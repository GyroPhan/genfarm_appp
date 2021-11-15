import 'package:flutter/material.dart';
import 'package:genfarm_appp/constants.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

class Ata36PresentationScreen extends StatefulWidget {
  const Ata36PresentationScreen({Key? key}) : super(key: key);

  @override
  _Ata36PresentationScreenState createState() =>
      _Ata36PresentationScreenState();
}

class _Ata36PresentationScreenState extends State<Ata36PresentationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '36 - Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_36/ata36_presentation.png",
            ),
            InfoListWid(
              children: [
                CusText(
                  text:
                      'The Airbus single aisle family pneumatic system supplies High Pressure (HP) air for:\n _ Air Condition\n _ Wing ice protection\n _ Water pressurization\n _ Hydraulic reservoir pressurization\n _ Engine starting',
                ),
                CusText(
                    text:
                        'High Pressure air can be supplied from three sources:\n _The engine bleed system\n _ APU\n _ HP ground power unit (GPU)'),
                CusText(
                    text:
                        'The pneumatic system operates pneumatically and is monitored by 2 Bleed Monitoring Computers (BMC 1 & 2)'),
                CusText(text: 'There is one BMC for each engine bleed system'),
                CusText(
                    text:
                        'Both BMCs exchange data. If one BMC fails, the other BMC takes over most of its monitoring functions')
              ],
            ),
            NavigationBarWid(
              route: Routes.ata_36_supply,
            )
          ],
        ),
      ),
    );
  }
}
