import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/screens/active_travel_screens/active_travel_screen/active_travel_screen.dart';
import 'package:untitled2/application/ui/screens/my_home_screen/my_home_screen.dart';
import 'package:untitled2/application/ui/screens/profile_screen/profile_screen.dart';
import 'package:untitled2/application/ui/screens/travel_requests_screens/travel_requests_screen/travel_requests_screen.dart';
import 'package:untitled2/application/ui/screens/trip_search_screens/trip_search_screen/trip_search_screen.dart';

class MainTabsScreen extends StatefulWidget {
    const MainTabsScreen({Key? key}) : super(key: key);

  @override
  _MainTabsScreenState createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  int _selectedIndex = 1;//поменять согласно бизнес логике
  static const List<Widget> _widgetOptions = <Widget>[
    ActiveTravelScreen(),
    MyHomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
            color: backGroundColor,
            boxShadow:[
              BoxShadow(
                color: textPassiveColor,
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0,left: 16,right: 16),
          child:
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: backGroundColor,
            elevation: 0,
            selectedItemColor: textPassiveColor,
            unselectedItemColor: textPassiveColor,
            selectedLabelStyle: selectedLabelStyle,
            unselectedLabelStyle: selectedLabelStyle,
            selectedIconTheme: const IconThemeData(color: selectedColor, size: 35),
            unselectedIconTheme: const IconThemeData(color: primaryColor, size: 35),

            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  UiIcons.vector,
                ),
                label: 'Активные',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  UiIcons.vector_1,
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  UiIcons.vector_2,
                ),
                label: 'Профиль',
              ),
            ],
          ),
        )
      ),
    );
  }
}


