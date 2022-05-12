import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 34, top: 76, bottom: 28),
                child: Icon(
                  UiIcons.vector_2,
                  size: 40,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 85,
            backgroundColor: notSelectedPhoto,
            child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/photo.png',
                  width: 150,
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Ирина',
            style: TextStyle(
              color: textActiveColor,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          ContactsProfile(),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DriversProfile(
                icon: UiIcons.vector__1_,
                backColor: notSelectedPhoto,
                iconColor: primaryColor,
                reviewBackColor: favouriteColor,
                review: 10,
              ),
              DriversProfile(
                icon: UiIcons.noun_delivery,
                backColor: backGroundColor,
                iconColor: textPassiveColor,
                reviewBackColor: errorColor,
                review: 6,
              ),
              DriversProfile(
                icon: UiIcons.delivery,
                backColor: backGroundColor,
                iconColor: textPassiveColor,
                reviewBackColor: deliveryColor,
                review: 6,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              DriveWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactsProfile extends StatelessWidget {
  const ContactsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.phone),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      '+7 167 278 738',
                      style: TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                child: Container(
                  height: 1,
                  color: borderTextField,
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.mail),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'qqqqq@mail.ru',
                      style: TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                child: Container(
                  height: 1,
                  color: borderTextField,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    UiIcons.vector_4,
                    size: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'www.google.com',
                      style: TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(Icons.insert_link_outlined, size: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DriversProfile extends StatelessWidget {
  final Color backColor, reviewBackColor, iconColor;
  final IconData icon;
  final int review;

  const DriversProfile(
      {Key? key,
      required this.backColor,
      required this.reviewBackColor,
      required this.iconColor,
      required this.icon,
      required this.review})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topEnd, children: [
      SizedBox(
          height: 79,
          width: 87,
          child: Card(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: backColor,
            shadowColor: textPassiveColor,
            elevation: 1.5,
            child: Padding(
                padding: EdgeInsets.only(left: 16, right: 19),
                child: Icon(
                  icon,
                  size: 39,
                  color: iconColor,
                )),
          )),
      CircleAvatar(
        radius: 12,
        backgroundColor: reviewBackColor,
        child: Center(
          child: Text(
            '$review',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              letterSpacing: -1.04,
            ),
          ),
        ),
      ),
    ]);
  }
}

class DriveWidget extends StatelessWidget {
  const DriveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          UiIcons.grouptrip,
          size: 20,
          color: primaryColor,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '20',
            style: TextStyle(
              color: textActiveColor,
              fontSize: 39
              ,
              fontFamily: 'Montserrat_Medium',
              fontWeight: FontWeight.w300,
              ),
          ),
        )
      ],
    );
  }
}
