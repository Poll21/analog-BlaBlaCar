import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
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
                      deptime: '22:33',
                      destination: 'Выкса',
                      desttime: '03:15',
                      data: 'Сегодня', tripTime: '22 ч. 38',
                      price: 1000, vacancies: 3,),
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
      deptime, desttime, tripTime;
  final int price, vacancies;

  const TripFoundCard({
    Key? key,
    required this.icon,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.tripTime,
    required this.price, 
    required this.vacancies,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                                child: Text(deptime , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(UiIcons.geolocation, size: 16,color: iconDepColor,),
                              ),
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
                              SizedBox(
                                width: 45,
                                child: Text(tripTime , style: const TextStyle(
                                    color: textPassiveColor,
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500),),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Image.asset('assets/images/Line.png', height: 35,)
                            ],
                          ),
                          Row(children: [
                            SizedBox(
                              width: 40,
                              child: Text(desttime , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(UiIcons.geolocation, size: 16,color: iconDestColor,),
                            ),
                            Text(destination , style: const TextStyle(
                                color: textPassiveColor,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),),
                          ],)
                        ],
                       ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('$price' , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),),
                              const Icon(UiIcons.ruble_fill0, size: 20, color: textPassiveColor,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('$vacancies' , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500),),
                              Text(' места' , style: const TextStyle(
                                  color: textPassiveColor,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500),),
                            ],
                          ),


                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                      radius: 20,
                      backgroundColor: notSelectedPhoto,
                        child: Image.asset(
                        'assets/images/photo.png',
                        ),
                      ) ,
                      Text('$vacancies' , style: const TextStyle(
                          color: textPassiveColor,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),),
                      Text(' места' , style: const TextStyle(
                          color: textPassiveColor,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),),
                    ],
                  ),
                ],
              ),
            )
        ));
  }
}
