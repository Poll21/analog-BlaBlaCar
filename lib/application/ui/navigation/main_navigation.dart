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
  static const paymentTrip = "/carProfile/createTrip/driver_profile/trip_data/payment_trip";
  static const paymentCompleted = "/carProfile/createTrip/driver_profile/trip_data/payment_trip/payment_completed";
  static const tripSearch = "/trip_search";
  static const tripNotFound = "/trip_search/tripNotFound ";
  static const tripFound = "/trip_search/tripNotFound/tripFound ";
  static const tripDetalFound = "/trip_search/tripNotFound/tripFound/tripDetalFound";
  static const successRequest = "/trip_search/tripNotFound/tripFound/tripDetalFound/successRequest";
  static const travelRequests = "/travelRequests";
  static const travelRequestDetail = "/travelRequests/travelRequestDetail";
  static const travelPassengerAccepted = "/travelRequests/travelRequestDetail/travelPassengerAccepted ";
  static const travelTripPassenger = "/travelTripPassenger";
  static const travelTripCarrier = "/travelTripCarrier";
  static const travelTripCancellation = "/travelTripCancellation";


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
    Screens.paymentTrip: (_) => _screenFactory.makePaymentTrip(),
    Screens.paymentCompleted: (_) => _screenFactory.makePaymentCompleted(),
    Screens.tripSearch: (_) => _screenFactory.makeTripSearch(),
    Screens.tripNotFound: (_) => _screenFactory.makeTripNotFound(),
    Screens.tripFound: (_) => _screenFactory.makeTripFound(),
    Screens.tripDetalFound: (_) => _screenFactory.makeTripDetalFound(),
    Screens.successRequest: (_) => _screenFactory.makeSuccessRequest(),
    Screens.travelRequests: (_) => _screenFactory.makeTravelRequests(),
    Screens.travelRequestDetail: (_) => _screenFactory.makeTravelRequestDetail(),
    Screens.travelPassengerAccepted: (_) => _screenFactory.makePassengerAccepted(),
    Screens.travelTripPassenger: (_) => _screenFactory.makeTripPassenger(),
    Screens.travelTripCarrier: (_) => _screenFactory.makeTripCarrier(),
    Screens.travelTripCancellation: (_) => _screenFactory.makeTripCancellation()

  };
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return null;
  }
}

