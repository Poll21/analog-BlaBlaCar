import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';

class MainTabsScreen extends StatefulWidget {
    const MainTabsScreen({Key? key}) : super(key: key);

  @override
  _MainTabsScreenState createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Container(
            height: 153,
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            child: const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 60),
                  child: Text(
                    'Поездки на ваш выбор по низким ценам',
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    style: handTextStyle,
                  ),
                ),
          ),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [

                Container(
                  height: 90,
                  color: primaryColor,
                ),
                ListView(
                  children: const [
                    HomeCard(text: 'СЩЗДАТЬ ПОЕЗДКЕ',
                      assImage: 'assets/images/freepik_car.png',),
                    SizedBox(height: 12,),
                    HomeCard(text: 'ПОИСК ПОЕДКИ',
                      assImage: 'assets/images/man_searching.png',),
                    SizedBox(height: 8,),
                    HomeCard(
                      text: 'ДЩСТАВКА', assImage: 'assets/images/male_delivery.png',),
                  ],
                ),]
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
        decoration: const BoxDecoration(
          color: backGroundColor,
          boxShadow:[
            BoxShadow(
              color: textPassiveColor,
              blurRadius: 5,
            ),
          ],
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20))
        ),
       child: Padding(
         padding: const EdgeInsets.only(bottom: 0,left: 16,right: 16),
         child:
         BottomNavigationBar(
           backgroundColor: backGroundColor,
           iconSize: 33.5,
           elevation: 0,
           selectedItemColor: selectedColor,
           unselectedItemColor: primaryColor,
           selectedLabelStyle: const TextStyle(
             fontSize: 10,
             fontWeight: FontWeight.w500,
             fontFamily: 'Montserrat',
             color: textPassiveColor,
           ),
           items: const [
             BottomNavigationBarItem(
               icon: Icon(
                 UiIcons.vector,
               ),
               label: 'Активные',
             ),
             BottomNavigationBarItem(
               icon: Icon(
                 UiIcons.vector_1,
               ),
               label: 'Главная',
             ),
             BottomNavigationBarItem(
               icon: Icon(
                 UiIcons.vector_2,
               ),
               label: 'Настройки',
             ),
           ],
         ),
       )

    );
  }
}

class HomeCard extends StatelessWidget {
  final String text;
  final String assImage;

  const HomeCard({Key? key,
    required this.text,
    required this.assImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 182,
    width: 340,
      child: Card(
        elevation: 0,
        color: backGroundColor,
        shape:
        const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                assImage,
                height: 148,
                fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                height: 32,

                decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
                child: Center(
                   child: Text(text,
                      style: cardText
                    )
                ),
              )
            ]),
        ),
      ),
    );
  }
}
