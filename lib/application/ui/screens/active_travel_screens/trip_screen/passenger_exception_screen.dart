// страница исключения пассажирира
import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_user/data_user.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/card_decoration_widget.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';
import 'package:untitled2/application/ui/widget/user_profile_widgets/avatar_widget.dart';
import 'package:untitled2/application/ui/widget/user_profile_widgets/user_profile_widget.dart';

class PassengerExceptionScreen extends StatelessWidget {
  const PassengerExceptionScreen({Key? key}) : super(key: key);

  @override
  final _idUser = 2;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Пассажир',
              height: 150,
              topPadding: 70,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelTripCarrier)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
            child: CardDecorationWidget(
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: AvatarWidget(idUser: _idUser),
                      ),
//отображает пассажира
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UserNameWidget(idUser: _idUser),
                          const SizedBox(height: 5),
                          UserPhoneWidget(idUser: _idUser),
                          const SizedBox(height: 5),
                          UserRatingWidget(idUser: _idUser),
                        ],
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        UiIcons.noun_delivery,
                        size: 30,
                        color: primaryColor,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Image.asset('assets/images/horizontal.png'),
                  ),
                  const Text('Сопроводительное письмо:',
                      style: TextStyle(
                          color: textActiveColor,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 14)),
                  const SizedBox(
                    height: 10,
                  ),
//отображает сопроводительное письмо пассажира
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: backgroundColorTextField,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text(listDataUser[_idUser].transmittalLetter!,
                        style: TextStyle(
                            color: textPassiveColor,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 12)),
                  ),

                ],
              ),
            ),
          ),
          Expanded(child: Container(),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 58),
            child: ProceedButton(
              color: badGradeColor,
              text: 'Исключить из поездки',
              press: () =>
                  Navigator.of(context).pushNamed(Screens.complaint)),
            ),
        ],
      ),
    );
  }
}
