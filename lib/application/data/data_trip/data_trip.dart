//класс хранящий данные поездки

import 'package:flutter/material.dart';

class DataTrip{
  final String departure, destination,
      destTime, depTime, dateTrip, commentTrip;
  final int idUser, idTrip, priceTrip, pricePak;
  final bool package,pats, baggage, alcohol, food, babyChair, smoking;

  DataTrip({
    required this.idTrip,       //id поездки
    required this.idUser,       //id водителя
    required this.departure,    //пункт отправления
    required this.destination,  //пункт назначения
    required this.depTime,      //время отправления
    required this.destTime,     //время прибытия
    required this.dateTrip,     //дата поездки
    required this.priceTrip,    //цена поездки
    required this.pricePak,     //цена перевозки посылки
    required this.commentTrip,  //комментарий водителя

    required this.package,      //берет посылки
    required this.pats,         //перевозка домашних животных
    required this.baggage,      //багаж
    required this.alcohol,      //алкоголь
    required this.food,         //еда
    required this.babyChair,    //детское кресло
    required this.smoking,      //курение
  });
}
final List<DataTrip> listDataTrip =[
  DataTrip(
    idUser: 2,
    idTrip: 1,
    departure: 'Москва',
    depTime: '22:33',
    destination: 'Выкса',
    destTime: '03:15',
    dateTrip: 'Сегодня',
    priceTrip: 1000,
    pricePak: 200,
    commentTrip: 'Гарантирую хорошую поездку на комфортабельном автомобиле.',

    package: true,
    smoking: false,
    food: true,
    pats: false,
    baggage: true,
    babyChair: false,
    alcohol: false,
  ),
  DataTrip(
    idUser: 3,
    idTrip: 2,
    departure: 'Базнаул',
    depTime: '13:30',
    destination: 'Новосибирск',
    destTime: '17:15',
    dateTrip: '22.07.22',
    priceTrip: 800,
    pricePak: 200,
    commentTrip: 'Гарантирую хорошую поездку на комфортабельном автомобиле. '
        'Я отвечу и перезвоню',

    package: true,
    smoking: true,
    food: true,
    pats: false,
    baggage: true,
    babyChair: false,
    alcohol: false,
  ),
];
