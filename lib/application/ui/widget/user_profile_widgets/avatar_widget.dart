import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_user/data_user.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

//виджет аватарки
class AvatarWidget extends StatelessWidget {
  final int idUser;
  const AvatarWidget({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _avatar = listDataUser[idUser].avatarUser;
    return CircleAvatar(
      backgroundColor: backGroundAvatarColor,
      radius: 20,
      child: _avatar,
    );
  }
}