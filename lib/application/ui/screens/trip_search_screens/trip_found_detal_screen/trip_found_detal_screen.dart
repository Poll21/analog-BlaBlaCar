import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';
import 'package:untitled2/application/ui/widget/transmittal_letter_widget.dart';
import 'package:untitled2/application/ui/widget/trip_additional_form_widget.dart';
import '../../../generate/my_flutter_app_icons.dart';

class TripFoundDetalScreen extends StatelessWidget {
  const TripFoundDetalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeadScreenWidget(
            title: 'СТРАНИЦА ПОЕЗДКИ',
            press: () => Navigator.of(context).pushNamed(Screens.tripFound)),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TripDetalFoundCard(
              package: 'Берет посылки',
              avatar: 'assets/images/photo.png',
              icon: UiIcons.noun,
              departure: 'Москва',
              deptime: '22:33',
              destination: 'Выкса',
              desttime: '03:15',
              data: 'Сегодня',
              tripTime: '22 ч. 38',
              price: 1000,
              brand: 'BMW',
              name: 'Иван',
              carModel: 'X5',
              review: 5,
              rating: 3.5,
              carNumber: 'Ф345ИА',
              phone: '+7 126 345 78 90',
              carColor: 'blue',
              carphoto: 'assets/images/car.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 40),
          child: ProceedButton(
            text: 'ОТПРАВИТЬ ЗАПРОС',
            press: () {
              showDialog(
                  barrierColor: backGroundColor,
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        elevation: 0,
                        titlePadding: EdgeInsetsDirectional.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        title: TransmittalLetterWidget(),
                      ));
            }, color: primaryColor,
          ),
        ),
      ],
    ));
  }
}

class TripDetalFoundCard extends StatelessWidget {
  final IconData icon;
  final String departure,
      package,
      destination,
      data,
      deptime,
      desttime,
      tripTime,
      name,
      brand,
      carModel,
      carNumber,
      phone,
      carphoto,
      carColor,
      avatar;
  final int price, review;
  final double rating;

  const TripDetalFoundCard({
    Key? key,
    required this.icon,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.tripTime,
    required this.price,
    required this.name,
    required this.brand,
    required this.carModel,
    required this.review,
    required this.rating,
    required this.carNumber,
    required this.avatar,
    required this.package,
    required this.phone,
    required this.carphoto,
    required this.carColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(Screens.tripDetalFound),
      child: Card(
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: backGroundColor,
          shadowColor: textPassiveColor,
          elevation: 1.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: ListView(
              children: [
                TripInfoFoundWidget(
                  desttime: desttime,
                  deptime: deptime,
                  data: data,
                  departure: departure,
                  package: package,
                  destination: destination,
                  price: price,
                  tripTime: tripTime,
                ),
                const SizedBox(height: 20),
                CarrierProfileWidget(
                  name: name,
                  review: review,
                  avatar: avatar,
                  rating: rating,
                  phone: phone,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Гарантирую хорошую поездку на комфортабельном автомобиле.'
                    ' Я отвечу и перезвоню',
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CarProfileFoundWidget(
                    brand: brand,
                    carNumber: carNumber,
                    carColor: carColor,
                    carModel: carModel,
                    carphoto: carphoto,
                  ),
                ),
                TripAdditionalNotFormWidget(
                    tripAdditionalNot: tripAdditionalNot),
              ],
            ),
          )),
    );
  }
}

class TripInfoFoundWidget extends StatelessWidget {
  final String departure,
      destination,
      data,
      deptime,
      desttime,
      tripTime,
      package;
  final int price;

  const TripInfoFoundWidget({
    Key? key,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.price,
    required this.tripTime,
    required this.package,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    deptime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    UiIcons.geolocation,
                    size: 16,
                    color: iconDepColor,
                  ),
                ),
                Text(
                  departure,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 45,
                  child: Text(
                    tripTime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Image.asset(
                  'assets/images/Line.png',
                  height: 35,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    desttime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    UiIcons.geolocation,
                    size: 16,
                    color: iconDestColor,
                  ),
                ),
                Text(
                  destination,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$price',
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                const Icon(
                  UiIcons.ruble_fill0,
                  size: 20,
                  color: textPassiveColor,
                ),
              ],
            ),
            Text(
              package,
              style: const TextStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
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

class CarProfileFoundWidget extends StatelessWidget {
  final String carphoto, brand, carModel, carColor, carNumber;

  const CarProfileFoundWidget(
      {Key? key,
      required this.brand,
      required this.carModel,
      required this.carNumber,
      required this.carphoto,
      required this.carColor})
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
            carphoto,
            height: 40,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  UiIcons.vector__1_,
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    brand,
                    style: const TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  carModel,
                  style: const TextStyle(
                      color: textActiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.format_color_fill,
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    carColor,
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
                  UiIcons.groupnumber,
                  size: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    carNumber,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
