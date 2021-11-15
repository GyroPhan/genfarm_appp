import 'package:flutter/material.dart';
import 'package:genfarm_appp/constants.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/title_box_wid.dart';
import 'package:genfarm_appp/data/list_data.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

class Ata36HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBarCus(context, title: 'PNEUMATIC'),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: ListView.builder(
            itemCount: ata36List.length,
            itemBuilder: (context, index) {
              return TitleBoxWid(
                onTap: () {
                  NavigationService.push(Routes.ata_36_presentation);
                },
                title: ata36List[index].title,
                width: width,
              );
            }),
      ),
    );
  }
}
