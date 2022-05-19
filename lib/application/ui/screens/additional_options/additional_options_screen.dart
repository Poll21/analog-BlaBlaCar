import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

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
        const SizedBox(
          height:44,
        ),
        const SwitchOptionsWidget(
          title: 'Курение в салоне',
        ),const SizedBox(
          height:44,
        ),
        const SwitchOptionsWidget(
          title: 'Домашние животные',
        ),
        // TextField(
        //
        //   inputFormatters: [PhoneInputFormatter()],
        //   decoration: const InputDecoration(border: OutlineInputBorder()),
        // ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom:53,top: 16 ),
          child: ProceedButton( text: 'ПОДТВЕРДИТЬ',
              press:()=>
                  Navigator.of(context).pushNamed(Screens.createTrip)),
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

  bool _switch = false;
  Color _backColorY = textActiveColor;
  Color _backColorN = primaryColor;
  void _switchY() {
    setState(() {
      if(_switch == false ) {
        _switch = true;
        _backColorY = primaryColor;
        _backColorN = textActiveColor;
      }
    });
  }
  void _switchN() {
    setState(() {
      if(_switch == true ) {
        _switch = false;
        _backColorY = textActiveColor;
        _backColorN = primaryColor;
      }
    });
  }


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
        const SizedBox(
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
                  backgroundColor: MaterialStateProperty.all<Color>(_backColorY),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: _switchY,
                child: const Text(
                  'Да',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: backGroundColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
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
                  backgroundColor: MaterialStateProperty.all<Color>(_backColorN),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: _switchN,
                child: const Center(
                  child: Text(
                    'Нет',
                    style: TextStyle(
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

            Text('$_switch')
          ],
        ),
      ],
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
  ){
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');
    final initialSpeshialSimbblCount = newValue.selection
    .textBefore(newValue.text)
    .replaceAll(RegExp(r'[^\d]+'), '')
    .length;
    final cursorPostition =
        newValue.selection.start - initialSpeshialSimbblCount;
    var finaCursorPosition = cursorPostition;
    final digitOnlyChars = digitsOnly.split('');

    if (oldValue.selection.textInside(oldValue.text) == '-') {
      digitOnlyChars.removeAt(cursorPostition - 1);
      finaCursorPosition -= 2;
    }
    var newString = <String>[];
    for (var i = 0; i < digitOnlyChars.length; i++) {
      if (i==3 || i==6 || i==8) {
        newString.add('-');
        newString.add(digitOnlyChars[i]);
        if (i <= cursorPostition) finaCursorPosition += 1;
        } else {
          newString.add(digitOnlyChars[i]);
        }
      }
      final resultString = newString.join('');
      return TextEditingValue(
        text: resultString,
        selection: TextSelection.collapsed(offset: finaCursorPosition),
      );
    }
  }

