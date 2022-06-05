import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_car_user/data_car_user.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/data/data_user/data_user.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ux/factory/trip_additional_factory/trip_additional_factory.dart';

///Экран активных поездок

class ActiveTravelScreen extends StatelessWidget {
  const ActiveTravelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: const ActiveTravelWidget()
        //ActiveTravelNotWidget(),
        );
  }
}

class ActiveTravelWidget extends StatelessWidget {
  const ActiveTravelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 250,
            child: Text(
              'Активные поездки',
              style: handTextStyleGrin,
              overflow: TextOverflow.clip,
              softWrap: true,
            ),
          ),
          CardActiveTravelWidget(),
        ],
      ),
    );
  }
}

//карта общей информации о поезке
class CardActiveTravelWidget extends StatelessWidget {
  const CardActiveTravelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(Screens.tripDetalFound),
          child: Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: backGroundColor,
              shadowColor: textPassiveColor,
              elevation: 1.5,
              child:
                  //InfoTripForCarrierWidget(),
                  InfoTripForPassenger())),
    );
  }
}

//содержание карты общей информации о поезке для перевозчика
class InfoTripForCarrierWidget extends StatelessWidget {
  const InfoTripForCarrierWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TripDataWidget(tripList: listDataTrip[0]),
                const SizedBox(
                  height: 16,
                ),
                TripTimeWidget(tripList: listDataTrip[0]),
              ]),
              Expanded(child: Container()),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                TripPriceWidget(tripList: listDataTrip[0]),
                TripAdditionalShortFactory(
                  tripList: listDataTrip[0],
                ),
                const SizedBox(
                  height: 16,
                ),
                TripPackageWidget(
                  tripList: listDataTrip[0],
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        'Пассажиры:',
                        style: TextStyle(
                            color: textActiveColor,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                      PassengersAvatarsWidget(
                        tripList: listDataTrip[0],
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        'Заявки:',
                        style: TextStyle(
                            color: textActiveColor,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                      RequestsAvatarsWidget(
                        tripList: listDataTrip[0],
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}

//содержание карты общей информации о поезке для пассажира
class InfoTripForPassenger extends StatelessWidget {
  const InfoTripForPassenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TripDataWidget(tripList: listDataTrip[0]),
                const SizedBox(
                  height: 16,
                ),
                TripTimeWidget(tripList: listDataTrip[0]),
              ]),
              Expanded(child: Container()),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                TripPriceWidget(tripList: listDataTrip[0]),
                TripAdditionalShortFactory(
                  tripList: listDataTrip[0],
                ),
                const SizedBox(
                  height: 16,
                ),
                TripPackageWidget(
                  tripList: listDataTrip[0],
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Column(
              children: [
                const Text(
                  'Пассажиры:',
                  style: TextStyle(
                      color: textActiveColor,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
                PassengersAvatarsWidget(
                  tripList: listDataTrip[0],
                ),
              ],
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          const Text(
           'Водитель',
            style: TextStyle(
                color: textActiveColor,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 12,
          ),
          InfoFoCarrierWidget(listDataUser: listDataUser[1],),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Ожидайте подтверждения заказа',
            style: TextStyle(
                color: iconDepColor,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          const Text(
            'Ваш заказ подтвержден',
            style: TextStyle(
                color: primaryColor,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

// отображает информацию о водителе
class InfoFoCarrierWidget extends StatelessWidget {
  final DataUser listDataUser;
  const InfoFoCarrierWidget({
    Key? key,
    required this.listDataUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _phoneUser = listDataUser.phoneUser;
    final _rating = listDataUser.ratingUser;
    final _review = listDataUser.reviewUser;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: notSelectedPhoto,
          child: listDataUser.avatarUser
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listDataUser.nameUser,
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
                    '$_phoneUser',
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
                  '$_rating/$_review',
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
    );;
  }
}

//отображает наличие посылок
class TripPackageWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripPackageWidget({Key? key, required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tripList.package == false || tripList.packageId.isEmpty) {
      return const Text(
        'Нет посылок',
        style: TextStyle(
            color: iconDepColor,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    }
    return const Text(
      'Посылка',
      style: TextStyle(
          color: primaryColor,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600),
    );
  }
}

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

//отображает аватарки заявителей на поездку
class RequestsAvatarsWidget extends StatelessWidget {
  final DataTrip tripList;

  const RequestsAvatarsWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _listPassengerAvatars = tripList.travelRequests
        .map((int e) => AvatarWidget(
              idUser: e,
            ))
        .toList();
    // ignore: prefer_is_empty
    if (tripList.travelRequests.length == 0) {
      return const Text(
        'Нет заявок',
        style: TextStyle(
            color: iconDepColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    } else {
      if (tripList.passengers.length == tripList.vacancies) {
        return const Text(
          'Нет свободных мест',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: iconDepColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600),
        );
      }
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _listPassengerAvatars,
    );
  }
}

//виджет аватарки
class AvatarWidget extends StatelessWidget {
  final int idUser;

  const AvatarWidget({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backGroundAvatarColor,
      radius: 20,
      child: Text('$idUser'),
    );
  }
}

//отображает дополнительные опции поездки
class TripAdditionalWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripAdditionalWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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

// виджет отображающий время отправления из пункта отправления
// и время прибытия в пункт назначения
class TripTimeWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripTimeWidget({Key? key, required this.tripList}) : super(key: key);

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
                    tripList.destTime,
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
                  tripList.destination,
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
                const SizedBox(
                  width: 45,
                  child: Text(
                    '4 ч.',
                    style: TextStyle(
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
                    tripList.depTime,
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
                  tripList.departure,
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
      ],
    );
  }
}

//виджет отображающий стоимость поездки
class TripPriceWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripPriceWidget({Key? key, required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _priceTrip = tripList.priceTrip;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$_priceTrip',
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
      ],
    );
  }
}
