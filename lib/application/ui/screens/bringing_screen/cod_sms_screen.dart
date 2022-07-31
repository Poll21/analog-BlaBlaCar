import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class CodSmsScreen extends StatelessWidget {
  const CodSmsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Image.asset(
            'assets/images/sms.png',
          ),
          const Text(
            'Код подтверждения',
            style: TextStyle(
              color: primaryColor,
              fontSize: 33.5,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              letterSpacing: -1.04,
            ),
          ),
          const Text('Введите код, отправленный по SMS',
              style: TextStyle(
                  color: textActiveColor,
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 1.5)),
          SizedBox(
            height: 50,
            width: 120,
            child: TextField(
                textAlign: TextAlign.center,
                maxLength: 6,
                cursorColor: borderTextField,
                keyboardType: TextInputType.number,
                //controller: nameController,
                style: TextStyle(
                  color: textPassiveColor,
                  fontSize: 15,
                  fontFamily: 'Montserrat_Medium',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                  prefixIconColor: textPassiveColor,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.04),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),

                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: borderTextField, width: 1.04),
                  //   borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  // ),
                )),
          ),
          ProceedButton(
            text: 'ПОДТВЕРДИТЬ',
            press: () =>
                {Navigator.of(context).pushNamed(Screens.registrationProfile)},
            color: primaryColor,
          ),
          TextButton(
            onPressed: () =>
                {Navigator.of(context).pushNamed(Screens.constcodSms)},
            child: const Text('Код не пришёл',
                style: TextStyle(
                    color: textActiveColor,
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 1.5)),
          ),
      ],
    ),
        ));
  }
}
