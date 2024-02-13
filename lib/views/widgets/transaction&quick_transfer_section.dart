import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/quick_transfer_section.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/transactions_section.dart';

class TransactionAndQuickTransfer extends StatelessWidget {
  const TransactionAndQuickTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionSection(),
        SizedBox(height: 10,),
        QuickTransferSection(),
        SizedBox(height: 15,),

      ],
    );
  }
}
