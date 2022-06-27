import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/card_fo_carrier_widget.dart';
import 'package:untitled2/application/ui/widget/head_screen_widget.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

//страница отзыва о пассажире
class LeaveFeedbackAboutCarrierScreen extends StatefulWidget {
  //final int id;
  const LeaveFeedbackAboutCarrierScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LeaveFeedbackAboutCarrierScreen> createState() => _LeaveFeedbackAboutCarrierScreenState();
}

class _LeaveFeedbackAboutCarrierScreenState extends State<LeaveFeedbackAboutCarrierScreen> {
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


          Expanded(
            child: ListView(
              children: [
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
                ProceedButtonShou(text: 'Приятная цена', color: primaryColor,),
                ProceedButtonShou(text: 'Комфортное вождение', color: primaryColor,),
                ProceedButtonShou(text: 'Хорошая музыка', color: primaryColor,),
                ProceedButtonShou(text: 'Общение', color: primaryColor,),
                ProceedButtonShou(text: 'Быстрая поездка', color: primaryColor,),
                ProceedButtonShou(text: 'Пунктуальность', color: primaryColor,),
                ProceedButtonShou(text: 'Перерывы на курение', color: primaryColor,),
                ProceedButtonShou(text: 'Пассажиры', color: primaryColor,),
                ProceedButtonShou(text: 'Классное авто', color: primaryColor,),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
                    child: Text(
                      'Не понравилось:',
                      style: TextStyle(
                        color: badGradeColor,
                        fontSize: 30,
                        fontFamily:'Montserrat',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -1.04,
                      ),
                      overflow: TextOverflow.clip,
                      softWrap: true,
                    )),
                ProceedButtonShou(text: 'Не соответвуют данные', color: badGradeColor,),
                ProceedButtonShou(text: 'Просили отменить поездку', color: badGradeColor,),
                ProceedButtonShou(text: 'Завышает цену', color: badGradeColor,),
                ProceedButtonShou(text: 'Требует предоплату', color: badGradeColor,),
                ProceedButtonShou(text: 'Долго подтверждение бронирования', color: badGradeColor,),
                ProceedButtonShou(text: 'Мои планы изменились', color: badGradeColor,),
                ProceedButtonShou(text: 'Отказался ехать или изменил условия', color: badGradeColor,),
                ProceedButtonShou(text: 'Не выходит на связь', color: badGradeColor,),
                ProceedButtonShou(text: 'Частые перерывы на курение', color: badGradeColor,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: ProceedButton(text: 'ОТПРАВИТЬ ', color: primaryColor, press: () =>
                    Navigator.of(context).pushNamed(Screens.blocking))
                ),

              ],
            ),
          ),
          SizedBox(height: 25,)
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
    int _rating =1;
    List<Widget> _starList =  List<Widget>.generate(5, (i) =>  IconButton(icon: Icon(Icons.star),
        color: _color,
        iconSize: _size,
        onPressed: () { //создать функцию
        }));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      _starList,
    );
  }
}

