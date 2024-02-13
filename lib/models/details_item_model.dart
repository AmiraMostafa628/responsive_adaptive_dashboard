import 'package:flutter/material.dart';

class DetailsItemModel{
 final String title,date,price,percent;
 final Color percentColor;

 const DetailsItemModel({required this.title,
  required this.date,required this.price,required this.percent,required this.percentColor});

}