import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/screens/travel_requests_screens/travel_requests_screen/travel_requests_screen.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class TravelRequestDetailScreen extends StatelessWidget {
  const TravelRequestDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(title: 'Пассажир', press: () {}),          //текст зависит от типа запроса
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: PassengerInformationDetailWidget(
                allTrips: passengerInformation[0],
                icon: passengerInformation[0],
                name: passengerInformation[0],
                avatar: passengerInformation[0],
                phone: passengerInformation[0],
                review: passengerInformation[0],
                rating: passengerInformation[0],
                transmittalLetter: passengerInformation[0],
              ),
            ),
          ),
          const SizedBox(height: 24),
          ProceedButton(
            text: 'Подтвердить',
            press: () {  },
            color: primaryColor,),
          const SizedBox(height: 24),
          ProceedButton(
            text: 'Отказать',
            press: () {  },
            color: errorColor,),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class PassengerInformationDetailWidget extends StatelessWidget {
  final PassengerInformation icon,
      name, transmittalLetter, phone, avatar,
      review,  allTrips,
      rating;

  const PassengerInformationDetailWidget({
    Key? key,
    required this.icon,
    required this.name,
    required this.transmittalLetter,
    required this.phone,
    required this.review,
    required this.rating,
    required this.avatar,
    required this.allTrips
  }) : super(key: key);

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
            padding: const EdgeInsets.symmetric(
                horizontal: 16, vertical: 12),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PassengerProfileWidget(
                    avatar: avatar.avatar,
                    name: name.name,
                    phone: phone.phone,
                    rating: rating.rating,
                    review: review.review,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(icon.icon, color: primaryColor,size: 24,),
                  ),
                ],
              ),
              const SizedBox(height: 18,),
              Text(transmittalLetter.transmittalLetter,
                maxLines: 4,
                overflow:TextOverflow.ellipsis,
                style: const TextStyle(
                    color: textActiveColor,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),)

            ])
        ));
  }
}
