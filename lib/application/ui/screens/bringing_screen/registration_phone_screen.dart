import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class RegistrationPhoneScreen extends StatelessWidget {
  const RegistrationPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 11, left: 11,top: 120),
              child: Image.asset(
                'assets/images/cod_sms.png',
              ),
            ),
            const SizedBox(height: 54),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Телефон',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 33.5,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1.04,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                  'Мы заботимся о вас, поэтому нам важно, чтобы каждый профиль был настоящим',
                  style: TextStyle(
                      color: textActiveColor,
                      fontSize: 14.57,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                      height: 1.5)),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 42,
                child: TextField(
                    cursorColor: borderTextField,
                    //controller: nameController,
                    style: TextStyle(
                      color: textPassiveColor,
                      fontSize: 14.57,
                      fontFamily: 'Montserrat_Medium',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 35),

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
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                  'Данный номер могут использовать пользователи приложения для связи с вами',
                  style: TextStyle(
                      color: textActiveColor,
                      fontSize: 14.57,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                      height: 1.5)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ProceedButton(
                  text: 'ОТПРАВИТЬ КОД',
                  press: () =>
                      {Navigator.of(context).pushNamed(Screens.constcodSms)},
                color: primaryColor,),
            ),
          ],
        ));
  }
}
