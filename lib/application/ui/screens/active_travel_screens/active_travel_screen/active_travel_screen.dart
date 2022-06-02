import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';

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
                    TripInfoWidget(tripList: listDataTrip[0],

                    ),
                    const SizedBox(height: 20),

                  ],
                ),
              )),
        ));
  }
}

class TripInfoWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripInfoWidget(
      {Key? key, required this.tripList,

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _priceTrip = tripList.priceTrip;
    return Row(
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
                  child: Text(
                    tripList.departure,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    UiIcons.geolocation,
                    size: 16,
                    color: iconDepColor,
                  ),
                ),
                Text(
                  tripList.destination,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 45,
                  child: Text(
                    '4 ч.',
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Image.asset(
                  'assets/images/Line.png',
                  height: 35,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    tripList.depTime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    UiIcons.geolocation,
                    size: 16,
                    color: iconDestColor,
                  ),
                ),
                Text(
                  tripList.departure,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$_priceTrip',
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                const Icon(
                  UiIcons.ruble_fill0,
                  size: 20,
                  color: textPassiveColor,
                ),
              ],
            ),

          ],
        ),
      ],
    );
  }
}

