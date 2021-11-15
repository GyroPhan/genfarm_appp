import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genfarm_appp/routes/routes.dart';
import 'package:genfarm_appp/screens/ata21/ata21_home_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata_36_presentation_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata_36_home_screen.dart';
import 'package:genfarm_appp/screens/ata36/ata_36_supply_screen.dart';
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
    case Routes.ata_36_home:
      return _buildRoute(settings: settings, screen: Ata36HomeScreen());
    case Routes.ata_36_presentation:
      return _buildRoute(settings: settings, screen: Ata36PresentationScreen());
    case Routes.ata_36_supply:
      return _buildRoute(settings: settings, screen: Ata36SupplyScreen());
//--ATA 21--
    case Routes.ata_21_home:
      return _buildRoute(settings: settings, screen: Ata21HomeScreen());
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
