import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/transactions_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class TransactionsItem extends StatelessWidget {
  const TransactionsItem({Key? key, required this.itemModel}) : super(key: key);

  final TransactionsModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(itemModel.image),
      title: Text(itemModel.title,
        style: AppStyles.styleMedium14(context),
      ),
      subtitle: Text(itemModel.date,
        style: AppStyles.styleRegular12(context),
      ),
      trailing: Text(itemModel.amount,
        style: AppStyles.styleRegular14(context).copyWith(
          color: itemModel.amountColor
        ),
      ),

    );
  }
}
