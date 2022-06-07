import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_trip/data_trip.dart';
import 'package:untitled2/application/data/data_user/data_user.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/screens/active_travel_screens/active_travel_screen/active_travel_screen.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/info_fo_carrier_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/passengers_avatars_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/requests_avatars_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/trip_data_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/trip_package_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/trip_price_widget.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/trip_time_widget.dart';
import 'package:untitled2/application/ux/factory/trip_additional_factory/trip_additional_factory.dart';


//содержание карты общей информации о поезке для перевозчика
class InfoTripForCarrierWidget extends StatelessWidget {
  final int tripIndex;
  const InfoTripForCarrierWidget({Key? key, required this.tripIndex}) : super(key: key);

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
                TripDataWidget(tripList: listDataTrip[tripIndex]),//виджет отображающий дату поездки
                const SizedBox(
                  height: 16,
                ),
                // виджет отображающий время отправления из пункта отправления
                // и время прибытия в пункт назначения
                TripTimeWidget(tripList: listDataTrip[tripIndex]),
              ]),
              Expanded(child: Container()),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                TripPriceWidget(tripList: listDataTrip[tripIndex]),//виджет отображающий стоимость поездки
                TripAdditionalShortFactory(
                  tripList: listDataTrip[0],
                ),
                const SizedBox(
                  height: 16,
                ),
                TripPackageWidget(// отображает информацию о водителе
                  tripList: listDataTrip[tripIndex],
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
                      PassengersAvatarsWidget(//отображает аватарки пассажиров поездки
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
                      RequestsAvatarsWidget(//отображает аватарки заявителей на поездку
                        tripList: listDataTrip[tripIndex],
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
  final int tripIndex;
  final bool request;
  const InfoTripForPassenger({
    Key? key,
    required this.request, required this.tripIndex
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    requestTrip ({bool? request}){ if(request == true){
      return const Text(
        'Ваш заказ подтвержден',
        style: TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    } return const Text(
      'Ожидайте подтверждения заказа',
      style: TextStyle(
          color: iconDepColor,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600),
    );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TripDataWidget(tripList: listDataTrip[tripIndex]), //виджет отображающий дату поездки
                const SizedBox(
                  height: 16,
                ),
                // виджет отображающий время отправления из пункта отправления
                // и время прибытия в пункт назначения
                TripTimeWidget(tripList: listDataTrip[tripIndex]),
              ]),
              Expanded(child: Container()),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                TripPriceWidget(tripList: listDataTrip[tripIndex]),//виджет отображающий стоимость поездки
                SizedBox(width: 80,
                  child: TripAdditionalShortFactory(
                    tripList: listDataTrip[tripIndex],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TripPackageWidget(
                  tripList: listDataTrip[tripIndex],
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
                    PassengersAvatarsWidget(//отображает аватарки пассажиров поездки
                      tripList: listDataTrip[tripIndex],
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
          InfoFoCarrierWidget(listDataUser: listDataUser[tripIndex],),// отображает информацию о водителе
          const SizedBox(
            height: 12,
          ),
          requestTrip(request:request)
        ],
      ),
    );
  }
}