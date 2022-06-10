//отображает сопроводительное письмо переревозчика
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

import '../../../data/data_trip/data_trip.dart';

class TransmittalLetterWidget extends StatelessWidget {
  final int idTrip;
  const TransmittalLetterWidget({Key? key, required this.idTrip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _transmittalLetter = listDataTrip[idTrip].commentTrip;
    return  Center(
      child: Text(
        _transmittalLetter,
        overflow: TextOverflow.clip,
        softWrap: true,
        style: const TextStyle(
            color: textPassiveColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500),
      ),
    );
  }
}