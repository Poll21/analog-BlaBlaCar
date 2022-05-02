import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ListView(
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
                    ),
                  ),]
            ),
          ),
        ],
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