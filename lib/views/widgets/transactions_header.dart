import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class TransactionsHeader extends StatelessWidget {
  const TransactionsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transactions',
          style: AppStyles.styleBold18(context).copyWith(
              color: const Color(0xFF000000)
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text('| Upcoming Bills',
          style: AppStyles.styleRegular12(context),
        ),
        const Spacer(),
        Text('View all',
          style: AppStyles.styleMedium12(context).copyWith(
            decoration: TextDecoration.underline
          ),
        ),

      ],);
  }
}
