import 'package:flutter/material.dart';
import 'package:genfarm_appp/constants.dart';
import 'package:genfarm_appp/cus_wids/title_box_wid.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(gradient: kMainGradient),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(kConstPadding * 1.5),
            child: ListView(
              children: [
                TitleBoxWid(
                  width: width,
                  title: 'GENERAL FAMILY',
                  onTap: () {
                    NavigationService.push(Routes.ata_menu);
                  },
                ),
                TitleBoxWid(
                  width: width,
                  title: 'DICTIONARY',
                  onTap: () {
                    NavigationService.push(Routes.dic_menu);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
