import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/widget/card_trip_widgets/avatar_widget.dart';

//виджет аватарки
class AvatarWidget extends StatelessWidget {
  final int idUser;

  const AvatarWidget({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backGroundAvatarColor,
      radius: 20,
      child: Text('$idUser'),
    );
  }
}