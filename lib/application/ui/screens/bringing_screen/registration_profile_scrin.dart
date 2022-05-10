import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class RegistrationProfileScreen extends StatelessWidget {
  const RegistrationProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Данные профиля',
              style: TextStyle(
                color: primaryColor,
                fontSize: 33.5,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -1.04,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 83,
                  backgroundColor: notSelectedPhoto,
                  child: Image.asset(
                    'assets/images/photo.png',
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  child: const Icon(
                    Icons.add,
                    color: backGroundColor,
                    size: 45,
                  ),
                  backgroundColor: primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
            FormProfileWidget(
              title: 'Имя',
              error: '*',
            ),
            FormProfileWidget(
              title: 'Телефон',
              error: '*',
            ),
            const SizedBox(height: 17),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // FormProfileWidget(
                //   title: 'Социальные сети социальные сети',
                //   error: '',
                // ),
                SizedBox(
                  width: 29,
                  height: 29,
                  child: FloatingActionButton(
                    elevation: 0,
                    child: const Icon(
                      Icons.add,
                      color: backGroundColor,
                      size: 16,
                    ),
                    backgroundColor: primaryColor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            FormProfileWidget(
              title: 'О себе',
              error: '',
            ),
            const SizedBox(height: 17),
            ProceedButton(
                text: 'ПОДТВЕРДИТЬ',
                press: () => {
                      Navigator.of(context)
                          .pushNamed(Screens.registrationProfile)
                    }),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () =>
                    {Navigator.of(context).pushNamed(Screens.constcodSms)},
                child: const Text('Выход',
                    style: TextStyle(
                        color: textActiveColor,
                        fontSize: 12.5,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 1.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormProfileWidget extends StatefulWidget {
  String title = '';
  String error = '*';

  FormProfileWidget({Key? key, required this.title, required this.error})
      : super(key: key);

  @override
  _FormProfileWidgetState createState() =>
      _FormProfileWidgetState(this.title, this.error);
}

class _FormProfileWidgetState extends State<FormProfileWidget> {
  TextEditingController nameController = TextEditingController();
  String title = '';
  String error = '*';

  _FormProfileWidgetState(this.title, this.error);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 21,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: textActiveColor,
                  )),
              Text(error,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: errorColor,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 42,
          child: TextField(
              cursorColor: borderTextField,
              style: const TextStyle(
                color: textPassiveColor,
                fontSize: 14.57,
                fontFamily: 'Montserrat_Medium',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 35),

                prefixIconColor: textPassiveColor,

                enabledBorder: const OutlineInputBorder(
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
              )),
        ),
      ],
    );
  }
}
