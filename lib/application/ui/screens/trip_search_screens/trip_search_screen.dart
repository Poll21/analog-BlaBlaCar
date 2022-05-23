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
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: Column(
          children: [
            Image.asset('assets/images/trip_search.png', height: 176,),
            TripSearchCard(),
            Image.asset('assets/images/search_location.png',height: 100,),

          ],
        ),
      ),
    );
  }
}

class TripSearchCard extends StatelessWidget {
   const TripSearchCard({Key? key,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,
      width: 340,
      child: Card(
        elevation: 0,
        color: backGroundColor,
        shape:
        const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextField(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                ),),

              Container(
                height: 45,
                decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
                child: InkWell(
                    onTap: () {},
                    child: Center(
                       child: Text('ПОИСК',
                          style: cardText
                      )
                  ),
                ),
              )
            ]),
      ),
    );
  }
}