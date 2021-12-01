import 'package:flutter/material.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/image_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/info_list_wid.dart';
import 'package:genfarm_appp/cus_wids/navigation_bar_wid.dart';
import 'package:genfarm_appp/cus_wids/text_cus_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

import '../../constants.dart';

class Ata24PresentScreen extends StatelessWidget {
  const Ata24PresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarCus(context, title: '24 - Presentation'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: Column(
          children: [
            ImageCusWid(
              url: "assets/images/ata_24/ata24_present.png",
            ),
            const InfoListWid(
              children: [
                CusText(text: 'Electric Power System Presentation'),
                CusText(
                    text:
                        'There are two identical engine driven generators called Integrated Drive Generators (IDGs). They are used as the main power source to supply the A/C electrical network.'),
                CusText(
                    text:
                        'The IDG basically contains, in a common housing, a generator and a Constant Speed Drive (CSD). The CSD gives a constant input speed to the generator, which is required for a constant output frequency.'),
                CusText(
                    text:
                        'Each generator supplies 115V 400Hz AC to its own bus:\n _Generator 1 supplies AC bus 1,\n _Generator 2 supplies AC bus 2.\nThis supply is known as split operation, which means that the AC power sources are never connected in parallel.'),
                CusText(
                    text:
                        'Each AC bus supplies a Transformer Rectifier (TR):\n _AC bus 1 supplies TR 1,\n _AC bus 2 supplies TR 2.'),
                CusText(
                    text:
                        'The TRs convert 115V AC into 28V DC to supply their associated DC buses, DC 1 and DC 2.'),
                CusText(text: 'DC bus 1 then supplies the DC BAT bus.'),
                CusText(
                    text:
                        'The DC battery bus can charge the batteries or receive power from the batteries as a backup supply, if no other power sources are available.'),
                CusText(
                    text:
                        'The electrical system also includes two ESSential (ESS) Buses. One is the AC ESS bus fed by AC bus 1 and the other is the DC ESS bus fed by DC bus 1. These buses are used to supply the most critical A/C systems.'),
                CusText(
                    text:
                        'This is the basic electrical system. We will now introduce some other components which also supply the system.'),
                CusText(
                    text:
                        'The entire electrical network can also be supplied by the APU generator.'),
                CusText(
                    text:
                        'On the ground, the aircraft electrical network can be supplied by an external power source.'),
                CusText(
                    text:
                        'Any one of the power sources can supply the entire electrical network. As no parallel connection is allowed on this A/C (split operation), we have to give priorities to the different power sources in supplying the bus bars.'),
                CusText(
                    text:
                        'AC 1 and AC 2 buses are supplied in priority by their own side generator, then the external power, then the APU generator and then by the opposite generator.')
              ],
            ),
            NavigationBarWid(
              route: () {
                NavigationService.push(Routes.ata24_abnormal);
              },
            )
          ],
        ),
      ),
    );
  }
}
