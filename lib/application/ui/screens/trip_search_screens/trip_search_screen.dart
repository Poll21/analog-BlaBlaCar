import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';
import 'package:untitled2/application/ui/screens/profile_screen/profile_screen.dart';

class TripSearchScreen extends StatefulWidget {
  const TripSearchScreen({Key? key}) : super(key: key);

  @override
  State<TripSearchScreen> createState() => _TripSearchScreenState();
}

class _TripSearchScreenState extends State<TripSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 50),
          child: Column(
            children: [
              Image.asset(
                'assets/images/trip_search.png',
                height: 176,
              ),
              const SizedBox(
                height: 7,
              ),
              const TripSearchCard(),
              const SizedBox(
                height: 36,
              ),
              Image.asset(
                'assets/images/search_location.png',
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Text('Здесь будет отображаться список ваших поисков',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: textActiveColor,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TripSearchCard extends StatelessWidget {
  const TripSearchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      width: 340,
      child: Card(
        elevation: 0,
        color: backGroundColor,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27, top: 17),
                    child: TextField(
                      cursorColor: textPassiveColor,
                      style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                          hintText: 'Откуда',
                          hintStyle: const TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            UiIcons.vector_1,
                            color: textPassiveColor,
                            size: 18,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(17, 17))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27, top: 17),
                    child: TextField(
                      cursorColor: textPassiveColor,
                      style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                          hintText: 'Куда',
                          hintStyle: const TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            UiIcons.vector_1,
                            color: textPassiveColor,
                            size: 18,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(17, 17))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27, top: 17),
                    child: TextField(
                      cursorColor: textPassiveColor,
                      style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                          hintText: 'Сегодня',
                          hintStyle: const TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.event,
                            color: textPassiveColor,
                            size: 18,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(17, 17))),
                    )),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ServiceCard(
                      icon: UiIcons.vector__1_,
                      backColor: notSelectedPhoto,
                      iconColor: primaryColor,
                    ),
                    ServiceCard(
                      icon: UiIcons.noun_delivery,
                      backColor: backGroundColor,
                      iconColor: textPassiveColor,
                    ),
                    ServiceCard(
                      icon: UiIcons.delivery,
                      backColor: backGroundColor,
                      iconColor: textPassiveColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15))),
            child: InkWell(
              onTap: () {},
              child: const Center(child: Text('ПОИСК', style: cardText)),
            ),
          )
        ]),
      ),
    );
  }
}
