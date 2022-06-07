import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/avatar_widget.dart';
//отображает аватарки пассажиров поездки
class PassengersAvatarsWidget extends StatelessWidget {
  final DataTrip tripList;

  const PassengersAvatarsWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _listPassengerAvatars = tripList.passengers
        .map((int e) => AvatarWidget(
      idUser: e,
    ))
        .toList();
    // ignore: prefer_is_empty
    if (tripList.passengers.length == 0) {
      return const Text(
        'Нет попутчиков',
        style: TextStyle(
            color: iconDepColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _listPassengerAvatars,
    );
  }
}