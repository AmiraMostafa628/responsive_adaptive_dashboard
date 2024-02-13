import 'package:flutter/material.dart';

class TransactionsModel{
  final String title,date,amount,image;
  final Color amountColor;

  const TransactionsModel({required this.title, required this.amount,
    required this.date, required this.image,required this.amountColor});
}