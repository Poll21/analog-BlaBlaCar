//класс хранящий данные пользователя

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataUser{
  final String nameUser;
  final Image avatarUser;
  final int idUser, reviewUser, phoneUser, allTripsUser;
  final double ratingUser;
  const DataUser({
    required this.idUser,       //id пользователя
    required this.nameUser,     //имя пользователя
    required this.avatarUser,   //фото пользователя
    required this.phoneUser,    //Телефон
    required this.reviewUser,   //колличество отзывов
    required this.ratingUser,   //рейтинг
    required this.allTripsUser, //число поездок
});
}

final List<DataUser> listDataUser = [
  DataUser(
    idUser: 1,
    avatarUser: Image.asset('assets/images/photo.png'),
    nameUser: 'Анна',
    phoneUser: 9236784579,
    reviewUser: 5,
    ratingUser: 4.5,
    allTripsUser: 5, ),
  DataUser(
    idUser: 2,
    avatarUser: Image.asset('assets/images/photo.png'),
    nameUser: 'Фудор',
    phoneUser: 9366784555,
    reviewUser: 4,
    ratingUser: 3.5,
    allTripsUser: 6,),
  DataUser(
    idUser: 3,
    avatarUser: Image.asset('assets/images/photo.png'),
    nameUser: 'Инна',
    phoneUser: 9366784533,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,),
];

