import 'package:flutter/material.dart';
import 'package:genfarm_appp/constants.dart';
import 'package:genfarm_appp/cus_wids/appbar_cus_wid.dart';
import 'package:genfarm_appp/cus_wids/title_box_wid.dart';
import 'package:genfarm_appp/data/list_data.dart';
import 'package:genfarm_appp/models/ata_model.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

class AtaMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBarCus(context, title: 'GENERAL FAMILY'),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: ListView.builder(
            itemCount: ataList.length,
            itemBuilder: (context, index) {
              Ata ata_index = ataList[index];
              return TitleBoxWid(
                width: width,
                title: ata_index.title,
                onTap: () {
                  NavigationService.push(ata_index.route);
                },
              );
            }),
      ),
    );
  }
}
