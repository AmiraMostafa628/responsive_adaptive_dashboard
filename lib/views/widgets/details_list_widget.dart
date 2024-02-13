import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/details_item_model.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/items_details.dart';

class DetailsListWidget extends StatelessWidget {
  const DetailsListWidget({Key? key}) : super(key: key);
  
  static const List<DetailsItemModel> items = [
    DetailsItemModel(title: 'Total Income',
        date: 'from last week',
        price: r'$974,99', percent: r'↗ 7.85%',
       percentColor: Color(0xFF3DD26A)
    ),
    DetailsItemModel(title: 'Total Expense',
        date: 'from last week',
        price: r'$425,30', percent: r'↙ 22.30%',
        percentColor: Color(0xFFFF0000)
    ),
    DetailsItemModel(title: 'Total Savings',
        date: 'from last week',
        price: r'$549,61', percent: r'↗ 9.50%',
        percentColor: Color(0xFF3DD26A)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: ItemDetails(itemModel: e))).toList(),
      ),
    );
  }
}


