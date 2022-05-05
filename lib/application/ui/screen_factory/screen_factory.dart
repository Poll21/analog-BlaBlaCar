import 'package:flutter/cupertino.dart';
import 'package:untitled2/application/ui/screens/cars_profile/cars_profile.dart';
import 'package:untitled2/application/ui/screens/main_tabs/main_tabs_screen.dart';

class ScreenFactory {
  Widget makeMainTabs() => const MainTabsScreen();
  Widget makeCarProfile() => const CarsProfileScreen();
}