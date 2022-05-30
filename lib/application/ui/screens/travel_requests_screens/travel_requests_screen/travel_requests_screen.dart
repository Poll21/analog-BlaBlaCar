//Все заявки на поездку

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';

class TravelRequestsScreen extends StatelessWidget {
  const TravelRequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(title: 'Заявки на поездку', press: () {}),
         

        ],
      ),
    );
  }
}

//Класс хранящий информацию о пассажире
class PassengerInformation{
  final IconData icon;
  final String name, transmittalLetter, phone, avatar;
  final int review, allTrips;
  final double rating;

  const PassengerInformation( {
    required this.allTrips,
    required this.avatar,
    required this.icon,
    required this.name,
    required this.transmittalLetter,
    required this.phone,
    required this.review,
    required this.rating,
  });
}

final List<PassengerInformation> passengerInformation = [
  PassengerInformation(
      avatar: 'assets/images/photo.png',
      icon: UiIcons.noun_delivery,
      name: 'Анна',
      transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. '
          'С собой багаж и кот. Без вредных привычек. Спасибо',
      phone: '+7 923 678 45 79',
      review: 5, rating: 4.5,
      allTrips: 5,),
  PassengerInformation(
    avatar: 'assets/images/photo.png',
    icon: UiIcons.delivery,
    name: 'Федя',
    transmittalLetter: 'Здравствуйте. '
        'Нужно доставить чемодан в другой город. Получиться? ',
    phone: '+7 923 678 45 55',
    review: 5, rating: 5,
    allTrips: 0,)
];

class PassengerInformationWidget extends StatelessWidget {
  final IconData icon;
  final String name, transmittalLetter, phone, avatar;
  final int review,  allTrips;
  final double rating;

  const PassengerInformationWidget({
    Key? key,
    required this.icon,
    required this.name,
    required this.transmittalLetter,
    required this.phone,
    required this.review,
    required this.rating,
    required this.avatar,
    required this.allTrips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 87,
        child: InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(Screens.tripDetalFound),
            child: Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: backGroundColor,
                shadowColor: textPassiveColor,
                elevation: 1.5,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Column(children: [
                      CarrierProfileWidget(
                        avatar: avatar,
                        name: name,
                        phone: phone,
                        rating: rating,
                        review: review,
                      ),

                    ])))));
  }
}
class CarrierProfileWidget extends StatelessWidget {
  final String avatar, name, phone;
  final int review;
  final double rating;

  const CarrierProfileWidget(
      {Key? key,
        required this.avatar,
        required this.name,
        required this.review,
        required this.rating,
        required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: notSelectedPhoto,
          child: Image.asset(
            avatar,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: textActiveColor,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 5),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    phone,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 15,
                ),
                Text(
                  '$rating/$review',
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}