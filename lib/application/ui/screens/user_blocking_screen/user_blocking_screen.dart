import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

class UserBlockingScreen extends StatelessWidget {
  const UserBlockingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset('assets/images/bloc_user.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Вы заблокированы до',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: textActiveColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.72,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              '03.01.2033',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: textActiveColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.72,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
