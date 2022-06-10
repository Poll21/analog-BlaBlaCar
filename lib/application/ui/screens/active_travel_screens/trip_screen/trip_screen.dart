import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/data/data_user/data_user.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';
import 'package:untitled2/application/ui/widget/trip_widgets/transmittal_letter_widget.dart';
import 'package:untitled2/application/ui/widget/user_profile_widgets/avatar_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/trip_price_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/trip_time_widget.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/user_profile_widgets/user_profile_widget.dart';
import 'package:untitled2/application/ux/factory/trip_additional_factory/trip_additional_factory.dart';
import '../../../widget/card_trip_widgets/trip_data_widget.dart';

//Экран Поезки пасажира
class TripScreen extends StatelessWidget {
  const TripScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final int _idTrip = 0;
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      HeadScreenWidget(
          title: 'Детали поездки',
          height: 150,
          topPadding: 70,
          press: () => Navigator.of(context).pushNamed(Screens.tripSearch)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(errorColor),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: () {},//добавить ссылку
                child: const Text(
                  'Отменить бронирование',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: backGroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.72,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(iconDestColor),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                  onPressed: () {}, //дотавить функцию
                  child: const Icon(Icons.announcement_rounded)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //виджет отображающий дату поездки
                  TripDataWidget(tripList: listDataTrip[_idTrip]),
                  const SizedBox(
                    height: 16,
                  ),
                  // виджет отображающий время отправления из пункта отправления
                  // и время прибытия в пункт назначения
                  TripTimeWidget(tripList: listDataTrip[_idTrip]),
                ]),
                Expanded(child: Container()),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  TripPriceWidget(tripList: listDataTrip[_idTrip]),
                  //виджет отображающий стоимость поездки
                  SizedBox(
                    width: 80,
                    child: TripAdditionalShortFactory(
                      tripList: listDataTrip[_idTrip],
                    ),
                  ),
                ]),
              ],
            ),
          ),
          // InfoTripForPassenger(request: true, tripIndex: tripIndex,) //содержание карты для пасажыра
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: const Text(
          'ПАССАЖИРЫ:',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: textActiveColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListPassangersTrip(idTrip: _idTrip,),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 25),
        child: Text(
          'ВОДИТЕЛЬ',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: textActiveColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Card(
          //карта перевозчика
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: backGroundColor,
          shadowColor: textPassiveColor,
          elevation: 1.5,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: AvatarWidget(idUser: 2),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          UserNameWidget(idUser: 2),
                          SizedBox(
                            height: 5,
                          ),
                          UserPhoneWidget(idUser: 2),
                          SizedBox(
                            height: 5,
                          ),
                          UserRatingWidget(
                            idUser: 2,
                          ),
                        ],
                      )
                    ],
                  ),
                  Image.asset('assets/images/horizontal.png'),
                  const TransmittalLetterWidget(
                    idTrip: 1,
                  ),
                  //отображает сопроводительное письмо переревозчика
                ],
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 24, bottom: 59),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ProceedButton(press: () {}, text: 'ЧАТ ПОЕЗДКИ', color: primaryColor),
            const Padding(
              padding: EdgeInsets.only(right: 30, top: 18),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: errorColor,
                child: Text('3',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: textActiveColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),),
            )
          ],
        ),
      ),
    ]));
  }
}



//формирует список пасажыров поездок
class ListPassangersTrip extends StatelessWidget {
  final int idTrip;
  const ListPassangersTrip({Key? key, required this.idTrip,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      final List<Widget> cardPassangersTrip = listDataTrip[idTrip].passengers
        .map((int idUser) => CardPassangersTrip( //карта общей информации о поезке
      idUser: idUser,
    )).toList();
    return Column(
      children: cardPassangersTrip,
    );
  }
}



//отображает карту пассажыра поездки
class CardPassangersTrip extends StatelessWidget {
  final int idUser;
  const CardPassangersTrip({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Card(
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
                  UserRatingWidget(
                      idUser: idUser
                  )
                ],
              )
            ],
          )),
    );
  }
}

