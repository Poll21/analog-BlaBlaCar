import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

class ProceedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function() press;
  const ProceedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            color: backGroundColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.72,
          ),
        ),
      ),
    );
  }
}