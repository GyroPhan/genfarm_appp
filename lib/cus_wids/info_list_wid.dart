import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genfarm_appp/constants.dart';

class InfoListWid extends StatelessWidget {
  const InfoListWid({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.all(kConstPadding),
        child: CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                aspectRatio: 10 / 90),
            items: children),
      ),
    );
  }
}
// ListView(scrollDirection: Axis.horizontal, children: children)
