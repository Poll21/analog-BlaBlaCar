import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/active_travel_not_found_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/card_travel_widget.dart';

///Экран активных поездок

class ActiveTravelScreen extends StatelessWidget {
  const ActiveTravelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:
        ActiveTravelWidget()
       // ActiveTravelNotWidget(),
        );
  }
}

class ActiveTravelWidget extends StatelessWidget {
  const ActiveTravelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DataTrip> _listDataTrip = listDataTrip;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: SizedBox(
              width: 250,
              child: Text(
                'Активные поездки',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              ),
            ),
          ),

          Expanded(child: ScrollCardActiveTravel()),//формирует список активных поездок
        ],
      ),
    );
  }
}
//формирует список активных поездок
class ScrollCardActiveTravel extends StatelessWidget {
  const ScrollCardActiveTravel({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Widget> cardActiveTravel = listDataTrip
        .map((DataTrip cardActive) => CardActiveTravelWidget( //карта общей информации о поезке
      tripIndex: cardActive.idTrip,
    ))
        .toList();
    return ListView(children: cardActiveTravel);
  }
}





