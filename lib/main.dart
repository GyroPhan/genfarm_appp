import 'package:flutter/material.dart';
import 'package:genfarm_appp/routes/navigation_service.dart';
import 'package:genfarm_appp/routes/route_generator.dart';
import 'package:genfarm_appp/routes/routes.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genfam App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.root,
      onGenerateRoute: generateRoute,
      navigatorKey: NavigationService.globalNavigatorKey,
      home: HomeScreen(),
    );
  }
}
