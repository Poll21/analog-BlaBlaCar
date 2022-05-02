import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/screen_factory/screen_factory.dart';
import 'package:untitled2/application/ui/screens/main_tabs/main_tabs_screen.dart';

abstract class Screens {
  static const main = "/";

}

class MainNavigation {
  final _screenFactory = ScreenFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    Screens.main: (_) => _screenFactory.makeMainTabs(),
  };
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return null;
  }
}

