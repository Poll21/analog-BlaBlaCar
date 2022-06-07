// отображает информацию о водителе
import 'package:flutter/material.dart';
import 'package:untitled2/application/data/data_user/data_user.dart';
import 'package:untitled2/application/ui/constants/constants.dart';

class InfoFoCarrierWidget extends StatelessWidget {
  final DataUser listDataUser;
  const InfoFoCarrierWidget({
    Key? key,
    required this.listDataUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _phoneUser = listDataUser.phoneUser;
    final _rating = listDataUser.ratingUser;
    final _review = listDataUser.reviewUser;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
            radius: 20,
            backgroundColor: notSelectedPhoto,
            child: listDataUser.avatarUser
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listDataUser.nameUser,
              style: const TextStyle(
                  color: textActiveColor,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 5),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '$_phoneUser',
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 15,
                ),
                Text(
                  '$_rating/$_review',
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );;
  }
}