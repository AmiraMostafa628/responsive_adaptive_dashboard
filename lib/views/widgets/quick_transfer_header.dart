
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class QuickTransferHeader extends StatelessWidget {
  const QuickTransferHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Transfer',
          style: AppStyles.styleBold18(context).copyWith(
              color: const Color(0xFF000000)
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text('Mobile top-up',
          style: AppStyles.styleRegular12(context),
        ),
        const Spacer(),
        Text('See all',
          style: AppStyles.styleMedium12(context).copyWith(
              decoration: TextDecoration.underline
          ),
        ),

      ],);
  }
}