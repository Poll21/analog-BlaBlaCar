import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/trip_widgets/list_passangers_trip_widget.dart';

class LeaveFeedbackScreen extends StatelessWidget {
  //final int id;
  const LeaveFeedbackScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int _id = 2;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadScreenWidget(
              title: 'Отзыв',
              height: 150,
              topPadding: 70,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.endOfTripCarrier)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CardPassangersTrip(
              idUser: _id,
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: Text(
                'Поставить оценку',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: Text(
                'Понравилось:',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: Text(
                'Не понравилось:',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              )),
        ],
      ),
    );
  }
}
