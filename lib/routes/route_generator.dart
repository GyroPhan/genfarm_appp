import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genfarm_appp/routes/routes.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_loca_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_mcdu_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_menu_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_airflow_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_ecamtemp_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_home_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_pack_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_packcontrolpanel_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_present_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_cargo_aftloca_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_cargo_controlpanel_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_cargo_ecam_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_cargo_fwdloca_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_cargo_mcdu_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_cargo_present_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_controlpanel_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_ecam.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_lavagalley_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_loca_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_mcdu_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_menu_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_vent_present_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_zonetempregusyst_screen.dart';
import 'package:genfarm_appp/screens/ata21/ata21_aircondi_zonetempregusystenhan_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_mcdu_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_controlpanel_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_ecam_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_leak_detection_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_other_comp_loca_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_presentation_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_home_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_enginebleed_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata36_pressure_regu_comp_loca_screen.dart';
import 'package:genfarm_appp/screens/ata_menu_screen.dart';
import 'package:genfarm_appp/screens/dic_menu_screen.dart';
import 'package:genfarm_appp/screens/home_screen.dart';

/// Returns value from pop if exists.
/// [clean] is true to remove all back stacks after pushing
/// [replace] is true to replace the current route by new route
///
/// How to use:
/// 1. Push:
/// NavigationService.push(Routes.home);
/// 2. Push replacement
/// NavigationService.push(Routes.home, replace: true);
/// 3. Push replace back stack
/// NavigationService.push(Routes.home, clean: true);
/// 4. Push replace remove util
/// NavigationService.push(Routes.home, replace: true, clean: true);
///
///
Route<Object>? generateRoute(RouteSettings settings) {
  debugPrint('\n=============== >> Navigating to: ${settings.name}\n');
  final args = settings.arguments;

  switch (settings.name) {
    case Routes.root:
      return _buildRoute(settings: settings, screen: HomeScreen());
    case Routes.home:
      return _buildRoute(settings: settings, screen: HomeScreen());
//--TOTAL MENU--
    case Routes.ata_menu:
      return _buildRoute(settings: settings, screen: AtaMenuScreen());
    case Routes.dic_menu:
      return _buildRoute(settings: settings, screen: DicMenuScreen());

//--ATA 36--
    case Routes.ata36_home:
      return _buildRoute(settings: settings, screen: Ata36HomeScreen());
    case Routes.ata36_presentation:
      return _buildRoute(settings: settings, screen: Ata36PresentationScreen());
    case Routes.ata36_enginebleed:
      return _buildRoute(settings: settings, screen: Ata36EngineBleedScreen());
    case Routes.ata36_leakdetection:
      return _buildRoute(
          settings: settings, screen: Ata36LeakDetectionScreen());
    case Routes.ata36_controlpanel:
      return _buildRoute(settings: settings, screen: Ata36ControlPanelScreen());
    case Routes.ata36_ecam:
      return _buildRoute(settings: settings, screen: Ata36EcamSceen());
    case Routes.ata36_mcdu:
      return _buildRoute(settings: settings, screen: Ata36McduScreen());
    case Routes.ata36_pressureregucomploca:
      return _buildRoute(
          settings: settings, screen: Ata36PressureReguCompLocaScreen());
    case Routes.ata36_othercomploca:
      return _buildRoute(
          settings: settings, screen: Ata36OtherCompLocaScreen());
//--ATA 21--
    case Routes.ata21_home:
      return _buildRoute(settings: settings, screen: Ata21HomeScreen());
    case Routes.ata21_aircondi_menu:
      return _buildRoute(settings: settings, screen: Ata21AirCondiMenuScreen());
    case Routes.ata21_aircondi_present:
      return _buildRoute(
          settings: settings, screen: Ata21AirCondiPresentScreen());
    case Routes.ata21_aircondi_airflow:
      return _buildRoute(
          settings: settings, screen: Ata21AirCondiAirFlowScreen());
    case Routes.ata21_aircondi_pack:
      return _buildRoute(settings: settings, screen: Ata21AirCondiPackScreen());
    case Routes.ata21_aircondi_zonetempregusyst:
      return _buildRoute(
          settings: settings, screen: Ata21AirCondiZoneTempReguSystScreen());
    case Routes.ata21_aircondi_zonetempregusystenhan:
      return _buildRoute(
          settings: settings,
          screen: Ata21AirCondiZoneTempReguSystEnhanScreen());
    case Routes.ata21_aircondi_packcontrolpanel:
      return _buildRoute(
          settings: settings, screen: Ata21AirCondiPackControlPanelScreen());
    case Routes.ata21_aircondi_ecam:
      return _buildRoute(settings: settings, screen: Ata21AirCondiEcamScreen());
    case Routes.ata21_aircondi_mcdu:
      return _buildRoute(settings: settings, screen: Ata21AirCondiMcduScreen());
    case Routes.ata21_aircondi_loca:
      return _buildRoute(settings: settings, screen: Ata21AirCondiLocaScreen());
    case Routes.ata21_vent_menu:
      return _buildRoute(settings: settings, screen: Ata21VentMenuScreen());
    case Routes.ata21_vent_present:
      return _buildRoute(settings: settings, screen: Ata21VentPresentScreen());
    case Routes.ata21_vent_lavagallley:
      return _buildRoute(
          settings: settings, screen: Ata21VentLavaGalleyScreen());
    case Routes.ata21_vent_controlpanel:
      return _buildRoute(
          settings: settings, screen: Ata21VentControlPanelScreen());
    case Routes.ata21_vent_ecam:
      return _buildRoute(settings: settings, screen: Ata21VentEcamScreen());
    case Routes.ata21_vent_mcdu:
      return _buildRoute(settings: settings, screen: Ata21VentMcduScreen());
    case Routes.ata21_vent_loca:
      return _buildRoute(settings: settings, screen: Ata21VentLocaScreen());
    case Routes.ata21_vent_cargo_present:
      return _buildRoute(
          settings: settings, screen: Ata21VentCargoPresentScreen());
    case Routes.ata21_vent_cargo_controlpanel:
      return _buildRoute(
          settings: settings, screen: Ata21VentCargoControlPanelScreen());
    case Routes.ata21_vent_cargo_ecam:
      return _buildRoute(
          settings: settings, screen: Ata21VentCargoEcamScreen());
    case Routes.ata21_vent_cargo_mcdu:
      return _buildRoute(
          settings: settings, screen: Ata21VentCargoMcduScreen());
    case Routes.ata21_vent_cargo_fwdloca:
      return _buildRoute(
          settings: settings, screen: Ata21VentCargoFwdLocaScreen());
    case Routes.ata21_vent_cargo_aftloca:
      return _buildRoute(
          settings: settings, screen: Ata21VentCargoAftLocaScreen());
//-----------
    default:
      return _errorRoute();
  }
}

Route<Object>? _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}

Route<Object>? _buildRoute(
    {required RouteSettings settings, required Widget screen}) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      return screen;
    },
  );
}

MaterialPageRoute _buildNoAnimationRoute(
        {required RouteSettings settings, required Widget screen}) =>
    NoAnimationMaterialPageRoute(
      settings: settings,
      builder: (context) {
        return screen;
      },
    );

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            builder: builder,
            maintainState: maintainState,
            settings: settings,
            fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

class FadePageRoute<T> extends PageRoute<T> {
  final Widget child;

  FadePageRoute(this.child);

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 700);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
