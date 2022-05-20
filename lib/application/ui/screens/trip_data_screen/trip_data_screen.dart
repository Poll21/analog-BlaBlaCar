import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';

import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';
import 'package:untitled2/application/ui/widget/switch_option_widget.dart';
import 'package:untitled2/application/ui/widget/textField_prefixIcon_widget.dart';

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
            press: () =>
                Navigator.of(context).pushNamed(Screens.driverAdditionalOptions)),
        const SizedBox(
          height: 44,
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  const SwitchOptionsWidget(
                    title: 'Беру посылки:',
                  ),
                  PriseTrip(title: 'Цена за посылку'),
                  PriseTrip(title: 'Цена за поездку'),
                ],
              ),
            )),
        Padding(
          padding:
          const EdgeInsets.only(left: 25, right: 25, bottom: 53,),
          child: ProceedButton(
              text: 'ПОДТВЕРДИТЬ',
              press: () => Navigator.of(context).pushNamed(Screens.createTrip)),
        ),
      ]),
    );
  }
}
class PriseTrip extends StatefulWidget {
  final String title;
  const PriseTrip({Key? key,
    required this.title
  }) : super(key: key);

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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                  suffixIcon:
                  Icon(Icons.date_range_sharp, size: 20),
                  prefixIconColor: textPassiveColor,

                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.04),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
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