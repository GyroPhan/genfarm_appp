import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata29PresentScreen extends StatelessWidget {
  const Ata29PresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '29 - Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            const ImageCusWid(
              url: "assets/images/ata_29/ata29_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(
                    text:
                        'The aircraft has three independent hydraulic systems:\n _Green,\n _Yellow,\n _Blue.'),
                CusText(
                    text:
                        'The three hydraulic systems supply hydraulic power at 3000 psi to the users:\n _Flight controls,\n _Landing gear,\n _Brakes,\n _Nose wheel steering,\n _Cargo doors,\n _Thrust reverser operation,\n _Constant Speed Motor / Generator (CSM/G).\n => Hydraulic fluid cannot be transferred from one system to another.'),
                CusText(
                    text:
                        'A reservoir in each hydraulic system is pressurized with air to prevent cavitation.\nThe green and yellow hydraulic systems are each pressurized by an Engine Driven Pump (EDP) 1 and 2.'),
                CusText(
                    text:
                        'The yellow hydraulic system can also be pressurized by an electric pump.\nIt is mainly used on ground for maintenance and cargo door operation.\nIf no electric power is available, a hand pump in the yellow system can be used to operate the cargo doors.'),
                CusText(
                    text:
                        'A Power Transfer Unit (PTU) enables the green system to be pressurized by the yellow system and vice versa. It transfers the hydraulic power but does not transfer the hydraulic fluid.'),
                CusText(
                    text:
                        'Fire shut-off valves are located between the reservoirs and the EDPs.\nThey isolate the systems in case of an engine fire.'),
                CusText(
                    text:
                        'The blue hydraulic system is pressurized by an electric pump.\nThe electric pump is the main pump for the blue system.\nIt starts running at first engine start or it can be manually activated on ground for maintenance purpose.\nBlue and yellow pumps are interchangeable.'),
                CusText(
                    text:
                        'In an emergency, the blue system can be pressurized by the Ram Air Turbine (RAT).\nThe RAT is deployed automatically or manually. It pressurizes the blue hydraulic system at 2500 psi. It can be retracted on ground only, following a specific maintenance procedure.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata29_home,
                    clean: true, replace: true);
              },
            )
          ],
        ),
      ),
    );
  }
}
