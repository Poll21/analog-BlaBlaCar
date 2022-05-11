import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/screen_factory/screen_factory.dart';

abstract class Screens {
  static const main = "/";
  static const registrationPhone = "/registrationPhone";
  static const constcodSms = "/registrationPhone/constcodSms";
  static const registrationProfile = "/registrationPhone/constcodSms/registrationProfile";
  static const carProfile = "/carProfile";

}

class MainNavigation {
  final _screenFactory = ScreenFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    Screens.main: (_) => _screenFactory.makeMainTabs(),
    Screens.registrationPhone: (_) => _screenFactory.makeRegistrationgPhone(),
    Screens.constcodSms: (_) => _screenFactory.makeCodSms(),
    Screens.registrationProfile: (_) => _screenFactory.makeRegistrationProfile(),
    Screens.carProfile: (_) => _screenFactory.makeCarProfile(),
  };
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return null;
  }
}

