import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/card_fo_carrier_widget.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';

class LeaveFeedbackScreen extends StatefulWidget {
  //final int id;
  const LeaveFeedbackScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LeaveFeedbackScreen> createState() => _LeaveFeedbackScreenState();
}

class _LeaveFeedbackScreenState extends State<LeaveFeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    final int _id = 2;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadScreenWidget(
              title: 'Отзыв',
              height: 150,
              topPadding: 70,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.endOfTripCarrier)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
//карта перевозчика
            child: CardFoCarrierWidget(idUser: _id),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: Text(
                'Поставить оценку',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: DriverRatingWidget(),
          ),

          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: Text(
                'Понравилось:',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              )),

          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: Text(
                'Не понравилось:',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              )),
        ],
      ),
    );
  }
}

class DriverRatingWidget extends StatefulWidget {
  const DriverRatingWidget({Key? key}) : super(key: key);

  @override
  State<DriverRatingWidget> createState() => _DriverRatingWidgetState();
}

class _DriverRatingWidgetState extends State<DriverRatingWidget> {
  @override
  Widget build(BuildContext context) {
    final _size =  MediaQuery.of(context).size.width / 8;
    Color _color = deliveryColor;
    int _rating = 1;


    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          List<Widget>.generate(5, (i) =>  IconButton(icon: Icon(Icons.star),
            color: _color,
            iconSize: _size,
            onPressed: () {
              _rating = i + 1;
              _color = favouriteColor;
              List<Widget>.generate(_rating, (n) =>  IconButton(icon: Icon(Icons.star), color: _color ,onPressed: () {  },
              ));
              setState(() { });
            },)),
        ),
        Text('$_rating')
      ],
    );
  }
}
