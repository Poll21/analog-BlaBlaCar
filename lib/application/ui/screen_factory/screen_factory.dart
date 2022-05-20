import 'package:flutter/cupertino.dart';
import 'package:untitled2/application/ui/screens/additional_options/additional_options_screen.dart';
import 'package:untitled2/application/ui/screens/bringing_screen/cod_sms_screen.dart';
import 'package:untitled2/application/ui/screens/bringing_screen/registration_phone_screen.dart';
import 'package:untitled2/application/ui/screens/bringing_screen/bringing_screen.dart';
import 'package:untitled2/application/ui/screens/bringing_screen/registration_profile_scrin.dart';
import 'package:untitled2/application/ui/screens/cars_profile/cars_profile.dart';
import 'package:untitled2/application/ui/screens/create_trip_screen/create_trip_screen.dart';
import 'package:untitled2/application/ui/screens/main_tabs/main_tabs_screen.dart';
import 'package:untitled2/application/ui/screens/trip_data_screen/trip_data_screen.dart';

import '../screens/driver_profile_screen/driver_profile_screen.dart';

class ScreenFactory {
  Widget makeBringing() => const BringingScreen();
  Widget makeRegistrationgPhone() => const RegistrationPhoneScreen();
  Widget makeCodSms() => const CodSmsScreen();
  Widget makeMainTabs() => const MainTabsScreen();
  Widget makeRegistrationProfile() => const RegistrationProfileScreen();
  Widget makeCarProfile() => const CarsProfileScreen();
  Widget makeCreateTrip() => const CreateTripScreen();
  Widget makeDriverProfile() => const DriverProfileScreen();
  Widget makeAdditionalOptions() => const AdditionalOptionsScreen();
  Widget makeTripData() => const TripDataScreen();
}