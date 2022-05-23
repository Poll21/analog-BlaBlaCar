import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class CreateTripScreen extends StatelessWidget {
  const CreateTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Создать поездку',
              press: () => Navigator.of(context).pushNamed(Screens.carProfile)),
          TimeTrip(title: 'Время отправления',),
          TimeTrip(title:'Время прибытия'),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
            child: ProceedButton(
                text: 'ПОДТВЕРДИТЬ',
                press: () =>
                    Navigator.of(context).pushNamed(Screens.driverProfile)),
          ),
        ],
      ),
    );
  }
}

class TimeTrip extends StatelessWidget {
  final String title;
  const TimeTrip({Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 16),
      child: Column(
        children: [
          SizedBox(
            height: 21,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
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
