import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class BringingScreen extends StatelessWidget {
  const BringingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 148),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/bringing.png',
              width: 340,
              height: 288,
            ),
            const SizedBox(height: 32),
            const Text(
              'Поиск попутчиков',
              style: TextStyle(
                color: primaryColor,
                fontSize: 33.5,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -1.04,
              ),
            ),
            const SizedBox(height: 9),
            const Text(
                'Найдите подходящую поездку, попутчиков или отправьте груз',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: textActiveColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.72,
                )),
            const SizedBox(height: 32),
            ProceedButton(
              text: 'ПРОДОЛЖИТЬ',
              press: () => {Navigator.of(context).pushNamed(Screens.registrationPhone)},
              color: primaryColor,),
          ],
        ),
      ),
    );
  }
}
