import 'package:flutter/material.dart';
import '../../generate/my_flutter_app_icons.dart';

class CarsProfile extends StatefulWidget {
  const CarsProfile({Key? key}) : super(key: key);

  @override
  _CarsProfileState createState() => _CarsProfileState();
}

class _CarsProfileState extends State<CarsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 200,
        title:
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              iconSize: 24,
              icon: Icon(Icons.keyboard_arrow_left_rounded, color: Color(0xFF898989),),
              onPressed: () {}, ),
            const Text(
                'Данные автомобиля',
                overflow: TextOverflow.clip,
                softWrap: true,

              ),
          ],
        )
      ),
      body: Column(
        children: [
          Row(children: [
            CircleAvatar(
              radius: 32,
            backgroundColor: Color(0xFF4D4BA35B),
            child: Icon(UiIcons.vector_2), )
          ],),

        ],
      ),

    );
  }
}
