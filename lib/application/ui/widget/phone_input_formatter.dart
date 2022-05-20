import 'package:flutter/services.dart';

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ){
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');
    final initialSpeshialSimbblCount = newValue.selection
        .textBefore(newValue.text)
        .replaceAll(RegExp(r'[^\d]+'), '')
        .length;
    final cursorPostition =
        newValue.selection.start - initialSpeshialSimbblCount;
    var finaCursorPosition = cursorPostition;
    final digitOnlyChars = digitsOnly.split('');

    if (oldValue.selection.textInside(oldValue.text) == '-') {
      digitOnlyChars.removeAt(cursorPostition - 1);
      finaCursorPosition -= 2;
    }
    var newString = <String>[];
    for (var i = 0; i < digitOnlyChars.length; i++) {
      if (i==3 || i==6 || i==8) {
        newString.add('-');
        newString.add(digitOnlyChars[i]);
        if (i <= cursorPostition) finaCursorPosition += 1;
      } else {
        newString.add(digitOnlyChars[i]);
      }
    }
    final resultString = newString.join('');
    return TextEditingValue(
      text: resultString,
      selection: TextSelection.collapsed(offset: finaCursorPosition),
    );
  }
}



