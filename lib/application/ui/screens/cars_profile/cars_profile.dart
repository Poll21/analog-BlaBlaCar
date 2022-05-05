import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import '../../generate/my_flutter_app_icons.dart';

class CarsProfileScreen extends StatefulWidget {
  const CarsProfileScreen({Key? key}) : super(key: key);

  @override
  _CarsProfileScreenState createState() => _CarsProfileScreenState();
}

class _CarsProfileScreenState extends State<CarsProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const [
      HeadScreenWidget(),
      LoadingCarPhoto(),
      FormCarRegistrationWidget(),
      TextField(
          style: TextStyle(
            fontSize: 14.57,
            fontFamily: 'Montserrat_Medium',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.recent_actors_outlined, size: 15),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    // color: borderTextField,
                    width: 1.04),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    // color: borderTextField,
                    width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ))),
    ]));
  }
}

class FormCarRegistrationWidget extends StatefulWidget {
  const FormCarRegistrationWidget({Key? key}) : super(key: key);

  @override
  State<FormCarRegistrationWidget> createState() =>
      _FormCarRegistrationWidgetState();
}

class _FormCarRegistrationWidgetState extends State<FormCarRegistrationWidget> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
        // cursorColor: borderTextField,
        controller: nameController,
        style: const TextStyle(
          color: textPassiveColor,
          fontSize: 14.57,
          fontFamily: 'Montserrat_Medium',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
        ),
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.recent_actors_outlined, size: 15),
          prefixIconColor: textPassiveColor,

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderTextField, width: 1.04),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: borderTextField, width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),

          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: borderTextField, width: 1.04),
          //   borderRadius: BorderRadius.all(Radius.circular(4.0)),
          // ),
        ));
  }
}

class LoadingCarPhoto extends StatefulWidget {
  const LoadingCarPhoto({Key? key}) : super(key: key);

  @override
  State<LoadingCarPhoto> createState() => _LoadingCarPhotoState();
}

class _LoadingCarPhotoState extends State<LoadingCarPhoto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: notSelectedPhoto,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                UiIcons.vector_3,
                color: primaryColor,
                size: 24,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ФОТО АВТО',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: textActiveColor,
                ),
              ),
              const SizedBox(
                height: 5.5,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.error,
                    color: errorColor,
                    size: 16.67,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Нет фото',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: textPassiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          SizedBox(
            width: 108,
            height: 38,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 1.2),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(backGroundColor),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'ЗАГРУЗИТЬ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.8,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeadScreenWidget extends StatelessWidget {
  const HeadScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 87),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Image.asset(
                'assets/images/back.png',
                color: textPassiveColor,
                width: 48,
                height: 24,
              ),
              onTap: () => Navigator.of(context).pushNamed(Screens.main),
            ),
            const SizedBox(
              height: 13,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                'Данные автомобиля',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}