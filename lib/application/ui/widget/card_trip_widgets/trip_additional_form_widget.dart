import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
//создает отображение расширенное отобрадение дополнительных опций поездки

class TripAdditionalForm extends StatelessWidget {
  final IconData iconAdd; //иконва опции
  final String descriptionAdd; //описание опции

  const TripAdditionalForm(
      {Key? key, required this.iconAdd, required this.descriptionAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Icon(
          iconAdd,
          size: 20,
        ),
        const SizedBox(width: 5),
        Text(
          descriptionAdd,
          style: const TextStyle(
              color: textPassiveColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}

class TripAdditionalNotForm extends StatelessWidget {
  final IconData iconAdd; //иконва опции
  final String descriptionAdd; //описание опции
  const TripAdditionalNotForm(
      {Key? key, required this.iconAdd, required this.descriptionAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Icon(
              iconAdd,
              size: 20,
              color: textPassiveColor,
            ),
            const Icon(Icons.block_sharp, size: 26,color: errorColor,)
          ],
        ),
        const SizedBox(width: 5),
        Text(
          descriptionAdd,
          style: const TextStyle(
              color: errorColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
