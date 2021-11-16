import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata36McduScreen extends StatelessWidget {
  const Ata36McduScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '36 - MCDU'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_36/ata36_mcdu.png",
            ),
            InfoListWid(
              children: [
                CusText(
                    text:
                        'Using the Multipurpose Control and Display Unit (MCDU), you can have access to the Centralized Fault Display System (CFDS) fault messages of the PNEUMATIC system. Specific BMC Built-In Test Equipment (BITE) is also available for BMC 1 and 2.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata36_home,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
