import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';

//виджет отображающий дату поездки
class TripDataWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripDataWidget({Key? key, required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          UiIcons.number,
          size: 15,
          color: textActiveColor,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          tripList.dateTrip,
          style: const TextStyle(
              color: textPassiveColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}