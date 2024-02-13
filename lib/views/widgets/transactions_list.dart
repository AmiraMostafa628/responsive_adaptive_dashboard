import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/transactions_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/transaction_item.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({Key? key}) : super(key: key);

  static const List<TransactionsModel> items = [
    TransactionsModel(
        image: AppImages.netflix,
        title: 'Netflix',
        date: 'Apr 05 2023 at 21:46',
        amount: r'-$15.49',
        amountColor: Color(0xFFD70000)),
    TransactionsModel(
        image: AppImages.spotify,
        title: 'Spotify',
        date: 'Mar 14, 2023 at 08:10',
        amount: r'+$135.49',
        amountColor: Color(0xFF00B046)),
    TransactionsModel(
        image: AppImages.figma,
        title: 'Figma',
        date: 'Feb 20, 2023 at 19:24',
        amount: r'-$75.00',
        amountColor: Color(0xFFD70000)),
    TransactionsModel(
        image: AppImages.shopify,
        title: 'Shopify',
        date: 'Jan 07, 2023 at 06:58',
        amount: r'+$934.29',
        amountColor: Color(0xFF00B046)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((e) {
        var index = e.key;
        var item = e.value;
        return Column(
          children: [
            TransactionsItem(itemModel: item),
            index != 3 ?const Padding(
              padding: EdgeInsets.symmetric(horizontal:12.0),
              child: Divider(height: 12,
                color: Color(0xFFECECEC),
              ),
            ) :const SizedBox(height: 5.0,)
          ],
        );
      }).toList(),
    );
  }
}
