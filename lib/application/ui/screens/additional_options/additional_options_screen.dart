import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';

class AdditionalOptionsScreen extends StatelessWidget {
  const AdditionalOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        HeadScreenWidget(
            title: 'Дополнительные опции',
            press: () =>
                Navigator.of(context).pushNamed(Screens.driverProfile)),
        SizedBox(
          height:44,
        ),
        SwitchOptionsWidget(
          title: 'Курение в салоне',
        ),
      ]),
    );
  }
}

class SwitchOptionsWidget extends StatefulWidget {
  final String title;

  const SwitchOptionsWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<SwitchOptionsWidget> createState() => _SwitchOptionsWidgetState(
        this.title,
      );
}

class _SwitchOptionsWidgetState extends State<SwitchOptionsWidget> {
  String title;

  _SwitchOptionsWidgetState(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: textActiveColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            SizedBox(
             // width: 60,
              height: 36,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: () {},
                child: Text(
                  'Да',
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: backGroundColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              //width: 60,
              height: 36,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Нет',
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      color: backGroundColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
