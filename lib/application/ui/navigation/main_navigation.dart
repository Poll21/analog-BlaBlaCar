import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/screen_factory/screen_factory.dart';

abstract class Screens {
  static const main = "/";
  static const carProfile = "/carProfile";
}

class MainNavigation {
  final _screenFactory = ScreenFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    Screens.main: (_) => _screenFactory.makeMainTabs(),
    Screens.carProfile: (_) => _screenFactory.makeCarProfile(),
  };
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return null;
  }
}

