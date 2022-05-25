import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/screens/profile_screen/profile_screen.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';

class TripFoundScreen extends StatelessWidget {
  const TripFoundScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'ПОИСК',
              press: () => Navigator.of(context).pushNamed(Screens.tripSearch)),
          Expanded(
              child: ListView(
                  children: [
                    TripFoundCard( icon: UiIcons.noun,
                      departure: 'Москва',
                      deptime: '22:00',
                      destination: 'Выкса',
                      desttime: '03:15',
                      data: 'Сегодня', tripTime: '5ч. 15',),
                  ]
              )),
        ],
      ),
    );
  }
}

class TripFoundCard extends StatelessWidget {
  final IconData icon;
  final String departure, destination, data,
      deptime, desttime, tripTime ;

  const TripFoundCard({
    Key? key,
    required this.icon,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.tripTime,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: 87,
        child: Card(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: backGroundColor,
            shadowColor: textPassiveColor,
            elevation: 1.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Text(deptime , style: const TextStyle(
                                color: textPassiveColor,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),),
                              Icon(UiIcons.geolocation, size: 16,color: iconDepColor,),
                              Text(departure , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(tripTime , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),),
                              Image.asset('assets/images/Line 1.png', height: 40,)
                            ],
                          ),

                          Row(children: [
                            Text(desttime , style: const TextStyle(
                                color: textPassiveColor,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),),
                            Icon(UiIcons.geolocation, size: 16,color: errorColor,),
                            Text(destination , style: const TextStyle(
                                color: textPassiveColor,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),),
                          ],)


                      //     const Padding(
                      //       padding: EdgeInsets.only(right: 8.0),
                      //
                      //     ),
                      //
                      //
                      //     const Expanded(
                      //       child: Center(
                      //         child: Text('----------', style: TextStyle(
                      //             color: textPassiveColor,
                      //             fontSize: 14,
                      //             fontFamily: 'Montserrat',
                      //             fontWeight: FontWeight.w600),),
                      //       ),
                      //     ),
                      //     Text(destination, style: const TextStyle(
                      //         color: textPassiveColor,
                      //         fontSize: 14,
                      //         fontFamily: 'Montserrat',
                      //         fontWeight: FontWeight.w600),),
                      //     const Padding(
                      //       padding: EdgeInsets.only(left: 8.0),
                      //       child: Icon(UiIcons.geolocation, size: 16, color: iconDestColor,),
                      //     ),
                      //
                                                   ],
                       )
                    ],
                  ),
                  // const SizedBox(height: 13,),
                  //
                  // const SizedBox(height: 13,),

                ],
              ),
            )
        ));
  }
}
