import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/screens/trip_search_screens/trip_found_screen/trip_found_screen.dart';
import 'package:untitled2/application/ui/widget/active_travel_not_found_widget.dart';

///Экран активных поездок

class ActiveTravelScreen extends StatelessWidget {
  const ActiveTravelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ActiveTravelWidget()
        //ActiveTravelNotWidget(),
        );
  }
}

class ActiveTravelWidget extends StatelessWidget {
  const ActiveTravelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 250,
            child: Text(
              'Активные поездки',
              style: handTextStyleGrin,
              overflow: TextOverflow.clip,
              softWrap: true,
            ),
          ),
          CardActiveTravelWidget(
            departure: 'Москва',
            deptime: '22:33',
            destination: 'Выкса',
            desttime: '03:15',
            data: 'Сегодня',
            tripTime: '22 ч. 38',
            price: 1000, applicationsTrip: 3,
            applicationspackage: 5,
          )
        ],
      ),
    );
  }
}
//карта поезки
class CardActiveTravelWidget extends StatelessWidget {
 final String
      departure, //пункт отправления
      destination, //пункт назначения
      data,      //дата пщуздки
      deptime,  //время отправления
      desttime, //время прбытия
      tripTime; //время в пути

  final int price,        //цена поезки
      applicationsTrip,   // количество заявок на поезку
      applicationspackage;// количество заявок на посылку

  const CardActiveTravelWidget({
    Key? key,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.tripTime,
    required this.price,
    required this.applicationsTrip,
    required this.applicationspackage,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

        child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(Screens.tripDetalFound),
          child: Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: backGroundColor,
              shadowColor: textPassiveColor,
              elevation: 1.5,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    TripInfoWidget(
                      desttime: desttime,
                      deptime: deptime,
                      data: data,
                      departure: departure,

                      destination: destination,
                      price: price,
                      tripTime: tripTime,
                    ),
                    const SizedBox(height: 20),

                  ],
                ),
              )),
        ));
  }
}

