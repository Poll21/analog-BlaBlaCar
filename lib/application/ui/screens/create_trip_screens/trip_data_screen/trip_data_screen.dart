import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';
import 'package:untitled2/application/ui/widget/switch_option_widget.dart';

class TripDataScreen extends StatefulWidget {
  const TripDataScreen({Key? key}) : super(key: key);

  @override
  State<TripDataScreen> createState() => _TripDataScreenState();
}

class _TripDataScreenState extends State<TripDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        HeadScreenWidget(
            title: 'Данные поездки',
            press: () => Navigator.of(context)
                .pushNamed(Screens.driverAdditionalOptions)),
        const SizedBox(
          height: 44,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              SwitchOptionsWidget(
                title: 'Беру посылки:',
              ),
              PriseTrip(title: 'Цена за посылку'),
              PriseTrip(title: 'Цена за поездку'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Количество свободных мест',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: textActiveColor,
                      )),
                  Text('*',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: errorColor,
                      )),
                ],
              ),
              const SizedBox(height: 6),
              VacanciesWidget(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Описание',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: textActiveColor,
                      )),
                  Text('*',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: errorColor,
                      )),
                ],
              ),
              const SizedBox(height: 6),
              const TextField(
                  maxLines: 5,
                  minLines: 3,
                  cursorColor: borderTextField,
                  style: TextStyle(
                    color: textPassiveColor,
                    fontSize: 14.57,
                    fontFamily: 'Montserrat_Medium',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: borderTextField, width: 1.04),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: borderTextField, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ))
            ],
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 53,
            top: 10,
          ),
          child: ProceedButton(
              text: 'ПОДТВЕРДИТЬ',
              press: () => Navigator.of(context).pushNamed(Screens.paymentTrip)),
        ),
      ]),
    );
  }
}

class VacanciesWidget extends StatefulWidget {
  const VacanciesWidget({Key? key}) : super(key: key);

  @override
  _VacanciesWidgetState createState() => _VacanciesWidgetState();
}

class _VacanciesWidgetState extends State<VacanciesWidget> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 46,
          width: 46,
          child: FloatingActionButton(
              elevation: 0,
              backgroundColor: primaryColor,
              child: const Icon(
                Icons.remove,
                color: backGroundColor,
                size: 40,
              ),
              onPressed: _decrement),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Text('$_counter',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                fontSize: 35,
                color: textActiveColor,
              )),
        ),
        SizedBox(
          height: 46,
          width: 46,
          child: FloatingActionButton(
              elevation: 0,
              backgroundColor: primaryColor,
              child: const Icon(
                Icons.add,
                color: backGroundColor,
                size: 40,
              ),
              onPressed: _increment),
        ),
      ],
    );
  }
}

class PriseTrip extends StatefulWidget {
  final String title;

  const PriseTrip({Key? key, required this.title}) : super(key: key);

  @override
  State<PriseTrip> createState() => _PriseTripState();
}

class _PriseTripState extends State<PriseTrip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          SizedBox(
            height: 21,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.title,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: textActiveColor,
                    )),
                Text('*',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: errorColor,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 42,
            child: TextField(
                controller: TextEditingController(),
                cursorColor: borderTextField,
                // controller: nameController,
                style: const TextStyle(
                  color: textPassiveColor,
                  fontSize: 14.57,
                  fontFamily: 'Montserrat_Medium',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                  suffixIcon: Icon(UiIcons.ruble_fill0, size: 20),
                  prefixIconColor: textPassiveColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.04),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}