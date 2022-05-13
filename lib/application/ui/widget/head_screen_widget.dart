import 'package:flutter/material.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

class HeadScreenWidget extends StatelessWidget {
  final String title;
  final Function() press;
  const HeadScreenWidget({Key? key,
    required this.title,
    required this.press
  }) : super(key: key);

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
              onTap: press,
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              width: 300,
              child: Text(
                title,
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