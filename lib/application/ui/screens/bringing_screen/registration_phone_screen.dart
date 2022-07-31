import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/application/ui/constants/constants.dart';
import 'package:untitled2/application/ui/navigation/main_navigation.dart';
import 'package:untitled2/application/ui/widget/proceed_button.dart';

class RegistrationPhoneScreen extends StatelessWidget {
  const RegistrationPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cod_sms.png',
              ),
              const Text(
                'Телефон',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 33.5,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1.04,
                ),
              ),
              const Text(
                  'Мы заботимся о вас, поэтому нам важно, чтобы каждый профиль был настоящим',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: textActiveColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 50,
                child: TextField(
                  inputFormatters:[PhoneInputFormatter()],
                  keyboardType: TextInputType.number,
                  cursorColor: borderTextField,
                    maxLength: 13,
                    //controller: nameController,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 15,
                      fontFamily: 'Montserrat_Medium',
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      prefixText:'+7 ',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: borderTextField, width: 1.04),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: borderTextField, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    )),
              ),
              const Text(
                  'Данный номер могут использовать пользователи приложения для связи с вами',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: textActiveColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.72,
                  )),
              ProceedButton(
                  text: 'ОТПРАВИТЬ КОД',
                  press: () =>
                      {Navigator.of(context).pushNamed(Screens.constcodSms)},
                color: primaryColor,),
            ],
          ),
        ));
  }
}
// 123 456 78 90

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'),'');//заменяет все символы кроме цыфр на пустой
// вычисляет количество пробелов в строке до курсора
    final initialSpeshialSimbolCuont = newValue.selection
    .textBefore(newValue.text)//получаем весь текст до позиции курсора
    .replaceAll(RegExp(r'[\d]+'),'')//удаляем все цифры
    .length;//вычисляем длинну получившейся строки

    final cursorPosition =
        newValue.selection.start//позиция курсора в новой строке
            - initialSpeshialSimbolCuont//количество пробелов до курсора
    ;
    var finalCursorPosition = cursorPosition;
    final digitsOnlyChars = digitsOnly.split('');//разбивает строку на отдельные элементы и создает массив
//удаление символа перед тере


    if (oldValue.selection.textBefore(oldValue.text).endsWith('-') == true) {//если символ равен перед курсором '-'
     digitsOnlyChars.removeAt(cursorPosition - 1);
     finalCursorPosition -= 2;

    }

    var newString = <String>[];

    for (var i = 0; i < digitsOnlyChars.length; i++){
     if (i == 3 || i == 6 || i == 8){
        newString.add('-');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition){finalCursorPosition += 1;}
       } else {
        newString.add(digitsOnlyChars[i]);
      }
    }

    final resultString = newString.join('');//обеденяет в строку отдельные элементы из массива символов

    return TextEditingValue(
        text: resultString,
        selection: TextSelection.collapsed(offset: finalCursorPosition)
    );
  }
}
