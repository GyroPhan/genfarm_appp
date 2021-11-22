import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata21VentCargoPresentScreen extends StatelessWidget {
  const Ata21VentCargoPresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarCus(context, title: '21 - Cargo Compartment Ventilation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_21/ata21_vent_cargo_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: ' Cargo Compartment Ventilation'),
                CusText(
                    text:
                        ' As an option on the Airbus single aisle family, the forward and aft cargo compartments can have a ventilation system. In addition, a heating system may be installed in either or both compartments. Note that the heating system will only be installed along with a ventilation system.'),
                CusText(
                    text:
                        ' The operation for both compartments is similar so we will only look at the forward cargo compartment. Air from the main cabin is drawn down into the cargo compartment by the extract fan or by differential pressure in flight. After circulating through the compartment, the air is discharged overboard.'),
                CusText(
                    text:
                        ' The operation of the two isolation valves and the extract fan is controlled automatically by the cargo Ventilation Controller (VC). One VC is able to control either or both compartments.'),
                CusText(
                    text:
                        ' For the heating of the cargo compartment, the pilots select the desired compartment temp and hot bleed air is mixed with the air coming from the main cabin to increase the temperature if necessary.\n The supply of hot air is controlled by the Cargo Heating Controller. Each heated compartment has a dedicated Cargo Heating Controller. Note that there is NO direct air conditioning supply to the cargo compartments. The pilots cannot add "cold" air to the compartments.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata21_vent_menu,
                    replace: true, clean: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
