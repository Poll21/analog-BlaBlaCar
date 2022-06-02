//список дополнительных опций поезки, на "спранице поезки"

import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';

class TripAdditionalFormWidget extends StatelessWidget {
  final DataTrip tripList;
  const TripAdditionalFormWidget({
    Key? key,required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> additionalItem =[];
    if (tripList.pats == true) {
      additionalItem.add(TripAdditionalForm(
          iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Можно с животными'));
    }else{
      additionalItem.add(TripAdditionalNotForm(
          iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Нельзя с животными'));
    }
    if (tripList.babyChair == true) {
      additionalItem.add(TripAdditionalForm(
          iconAdd: UiIcons.baby,
          descriptionAdd: 'Есть детское кресло'));
    }else{
      additionalItem.add(TripAdditionalNotForm(
          iconAdd: UiIcons.baby,
          descriptionAdd: 'Нет детского кресла'));
    }
    if (tripList.pats == true) {
      additionalItem.add(TripAdditionalForm(
          iconAdd: UiIcons.luggage_yes,
          descriptionAdd: 'Можно с багажом'));
    }else{
      additionalItem.add(TripAdditionalNotForm(
          iconAdd: UiIcons.luggage_yes,
          descriptionAdd: 'Нельзя с багажом'));
    }
    if (tripList.pats == true) {
      additionalItem.add(TripAdditionalForm(iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Можно с животными'));
    }else{
      additionalItem.add(TripAdditionalNotForm(iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Нельзя с животными'));
    }
    if (tripList.pats == true) {
      additionalItem.add(TripAdditionalForm(iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Можно с животными'));
    }else{
      additionalItem.add(TripAdditionalNotForm(iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Нельзя с животными'));
    }
    if (tripList.pats == true) {
      additionalItem.add(TripAdditionalForm(iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Можно с животными'));
    }else{
      additionalItem.add(TripAdditionalNotForm(iconAdd: UiIcons.pets_yes,
          descriptionAdd: 'Нельзя с животными'));
    }

    return Column(
      children: additionalItem,
    );
  }
}

//класс хронящий иконку и описание дополнительной опции
class AdditionalForm {
  final IconData iconAdd; //иконва опции
  final String descriptionAdd; //описание опции
  AdditionalForm(this.iconAdd, this.descriptionAdd);
}

//лист который будет содержать полученные от сервера дополнительные опции
//пока содержит все возможные дополнительные опции
List<AdditionalForm> tripAdditional = [
  AdditionalForm(UiIcons.pets_yes, 'Можно с животными'),
  AdditionalForm(UiIcons.baby, 'Есть детское кресло'),
  AdditionalForm(UiIcons.luggage_yes, 'Можно с багажом'),
  AdditionalForm(UiIcons.food_yes, 'Можно с едой'),
  AdditionalForm(UiIcons.alcohol_yes, 'Можно с алкоголем'),
  AdditionalForm(UiIcons.smoke_yes, 'Можно курить'),
];
//лист который будет содержать полученные от сервера НЕ дополнительные опции
List<AdditionalForm> tripAdditionalNot = [
  AdditionalForm(UiIcons.pets_yes, 'Нельзя с животными'),
  AdditionalForm(UiIcons.baby, 'Нет детского кресла'),
  AdditionalForm(UiIcons.luggage_yes, 'Нельзя с багажом'),
  AdditionalForm(UiIcons.food_yes, 'Нельзя с едой'),
  AdditionalForm(UiIcons.alcohol_yes, 'Нельзя с алкоголем'),
  AdditionalForm(UiIcons.smoke_yes, 'Нельзя курить'),
];

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
