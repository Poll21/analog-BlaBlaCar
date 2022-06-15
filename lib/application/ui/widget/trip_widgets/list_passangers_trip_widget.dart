import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/user_profile_widgets/avatar_widget.dart';
import 'package:untitled2/application/ui/widget/user_profile_widgets/user_profile_widget.dart';

//формирует список пасажиров поездоки для пассжира
class ListPassangersTrip extends StatelessWidget {
  final int idTrip;

  const ListPassangersTrip({
    Key? key,
    required this.idTrip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> cardPassangersTrip = listDataTrip[idTrip]
        .passengers
        .map((int idUser) => CardPassangersTrip(idUser: idUser,))
        .toList();
    return Column(
      children: cardPassangersTrip,
    );
  }
}

//отображает карту пассажира поездки
class CardPassangersTrip extends StatelessWidget {
  final int idUser;

  const CardPassangersTrip({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: backGroundColor,
      shadowColor: textPassiveColor,
      elevation: 1.5,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: AvatarWidget(idUser: idUser),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserNameWidget(idUser: idUser),
                  const SizedBox(
                    height: 5,
                  ),
                  UserRatingWidget(idUser: idUser)
                ],
              )
            ],
          )),
    );
  }
}
//формирует список пасажиров поездоки для перевозчика
class ListPassangersTripCarrier extends StatelessWidget {
  final int idTrip;

  const ListPassangersTripCarrier({
    Key? key,
    required this.idTrip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> cardPassangersTrip = listDataTrip[idTrip]
        .passengers
        .map((int idUser) => CardPassangersTripCarrier(idUser: idUser,))
        .toList();
    return Column(
      children: cardPassangersTrip,
    );
  }
}
//отображает карту пассажира поездки для перевозчика
class CardPassangersTripCarrier extends StatelessWidget {
  final int idUser;

  const CardPassangersTripCarrier({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(Screens.leaveFeedback),
      child: Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: AvatarWidget(idUser: idUser),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserNameWidget(idUser: idUser),
                    const SizedBox(
                      height: 5,
                    ),
                    UserPhoneWidget(idUser: idUser)
                  ],
                )
              ],
            )),
      ),
    );
  }
}

//формирует список отправителей посылок для перевозчика
class ListPackageTripCarrier extends StatelessWidget {
  final int idTrip;

  const ListPackageTripCarrier({
    Key? key,
    required this.idTrip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> cardPassangersTrip = listDataTrip[idTrip]
        .packageId
        .map((int idUser) => CardPackageTripCarrier(idUser: idUser,))
        .toList();
    if (listDataTrip[idTrip].packageId.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const Center(

          child: Text('Нет посылок',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: errorColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,),
          ),
        ),
      );
    }
    return Column(
      children: cardPassangersTrip,
    );
  }
}
//отображает карту отправителей посылок для перевозчика
class CardPackageTripCarrier extends StatelessWidget {
  final int idUser;

  const CardPackageTripCarrier({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: backGroundColor,
      shadowColor: textPassiveColor,
      elevation: 1.5,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: AvatarWidget(idUser: idUser),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserNameWidget(idUser: idUser),
                  const SizedBox(
                    height: 5,
                  ),
                  UserPhoneWidget(idUser: idUser)
                ],
              )
            ],
          )),
    );
  }
}