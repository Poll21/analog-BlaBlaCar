import 'package:flutter/material.dart';
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
              Padding(
                padding: EdgeInsets.only(right: 34,top: 81,bottom: 32),
                child: Icon(
                  UiIcons.vector_2,
                  size: 40,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 75,
            backgroundColor: notSelectedPhoto,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/photo.png',width: 150,)
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text('Ирина',
            style: TextStyle(
              color: textActiveColor,
              fontSize: 20,
              fontFamily:'Montserrat',
              fontWeight: FontWeight.w700,
            ),),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 144,
            child: Column(
              children: [
                Text('+7 167 278 738',
                  style: TextStyle(
                    color: textActiveColor,
                    fontSize: 14,
                    fontFamily:'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),),
                Text('irina@mail.ru',
                  style: TextStyle(
                    color: textActiveColor,
                    fontSize: 14,
                    fontFamily:'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),),
                Text('www.google.com',
                  style: TextStyle(
                    color: textActiveColor,
                    fontSize: 14,
                    fontFamily:'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
