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
    return Scaffold(
        body: ActiveTravelWidget()
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
          CardActiveTravelWidget(),
        ],
      ),
    );
  }
}

//карта общей информации о поезке
class CardActiveTravelWidget extends StatelessWidget {
  const CardActiveTravelWidget({Key? key}) : super(key: key);

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
              child:
              Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   TripDataWidget(tripList: listDataTrip[0]),
                    SizedBox(height: 16,),
                   TripTimeWidget(tripList: listDataTrip[0]),
                  ]
                ),
                Column(
                  children: [
                    TripPriceWidget(tripList: listDataTrip[0])]),



              ],),

            ),
          )),
    );
  }
}

//отображает дополнительные опции поездки
class TripAdditionalWidget extends StatelessWidget {
  final DataTrip tripList;
  const TripAdditionalWidget({Key? key, required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


//виджет отображающий дату поездки
class TripDataWidget extends StatelessWidget {
  final DataTrip tripList;
  const TripDataWidget({Key? key, required this.tripList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(UiIcons.number, size: 15, color: textActiveColor,),
        const SizedBox(width: 8,),
        Text(
          tripList.dateTrip,
          style: const TextStyle(
            color: textPassiveColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),)
      ],
    );
  }
}

// виджет отображающий время отправления из пункта отправления
// и время прибытия в пункт назначения
class TripTimeWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripTimeWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    tripList.destTime,
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
                const SizedBox(
                  width: 45,
                  child: Text(
                    '4 ч.',
                    style: TextStyle(
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
      ],
    );
  }
}

//виджет отображающий стоимость поездки
class TripPriceWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripPriceWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _priceTrip = tripList.priceTrip;
    return Column(
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
    );
  }
}


