import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_card.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/transactions_header.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/transactions_list.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                child: TransactionsHeader(),
              ),
              SizedBox(height: 10.0),
              TransactionsList()

            ],
          ),
        )
    );
  }
}
