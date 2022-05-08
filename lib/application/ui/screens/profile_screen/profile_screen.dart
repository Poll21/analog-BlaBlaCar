import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/generate/my_flutter_app_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 34,top: 81,bottom: 32),
          child: Icon(
            UiIcons.vector_2,
            size: 40,
          ),
        ),
        CircleAvatar(
          radius: 83,
          backgroundColor: notSelectedPhoto,
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.add_a_photo_rounded,
              color: primaryColor,
              size: 60,
            ),
          ),
        ),
      ],
    );
  }
}
