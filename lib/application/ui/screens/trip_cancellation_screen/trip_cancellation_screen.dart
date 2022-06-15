import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class TripCancellationScreen extends StatelessWidget {
  const TripCancellationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadScreenWidget(
              title: 'Укажите причину отмены',
              height: 200, topPadding: 70,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelTripCarrier)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
               'Чтобы продолжить, выберете хотя бы одну причину отмены бронирования',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color:textActiveColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.72,
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
                children: const [
                  ProceedButtonShou(text: 'Не соответвуют данные',),
                  ProceedButtonShou(text: 'Просили отменить поездку',),
                  ProceedButtonShou(text: 'Место забронировано пошибке',),
                  ProceedButtonShou(text: 'Завышает цену',),
                  ProceedButtonShou(text: 'Требует предоплату',),
                  ProceedButtonShou(text: 'Долго подтверждение бронирования',),
                  ProceedButtonShou(text: 'Мои планы изменились',),
                  ProceedButtonShou(text: 'Отказался ехать или изменил условия',),
                  ProceedButtonShou(text: 'Не выходит на связь',),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25,bottom: 58),
            child: ProceedButton(
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelTripCancellationLast),
              color:primaryColor,
              text: 'Продолжить',),
          )

        ],
      ),
    );
  }
}
