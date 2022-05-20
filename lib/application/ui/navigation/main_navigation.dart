import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/screen_factory/screen_factory.dart';

abstract class Screens {
  static const main = "/";
  static const registrationPhone = "/registrationPhone";
  static const constcodSms = "/registrationPhone/constcodSms";
  static const registrationProfile = "/registrationPhone/constcodSms/registrationProfile";
  static const carProfile = "/carProfile";
  static const createTrip = "/carProfile/createTrip";
  static const driverProfile = "/carProfile/createTrip/driver_profile";
  static const driverAdditionalOptions = "/carProfile/createTrip/driver_profile/";
  static const driverTripData = "/carProfile/createTrip/driver_profile/trip_data";


}

class MainNavigation {
  final _screenFactory = ScreenFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    Screens.main: (_) => _screenFactory.makeMainTabs(),
    Screens.registrationPhone: (_) => _screenFactory.makeRegistrationgPhone(),
    Screens.constcodSms: (_) => _screenFactory.makeCodSms(),
    Screens.registrationProfile: (_) => _screenFactory.makeRegistrationProfile(),
    Screens.carProfile: (_) => _screenFactory.makeCarProfile(),
    Screens.createTrip: (_) => _screenFactory.makeCreateTrip(),
    Screens.driverProfile: (_) => _screenFactory.makeDriverProfile(),
    Screens.driverAdditionalOptions: (_) => _screenFactory.makeAdditionalOptions(),
    Screens.driverTripData: (_) => _screenFactory.makeTripData(),
  };
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return null;
  }
}

