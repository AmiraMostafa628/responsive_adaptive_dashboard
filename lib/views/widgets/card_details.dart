import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/switch_button.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Balance',
            style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFF747475)
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(r'$14,528,00',
            style: AppStyles.styleBold20(context),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text('Currency',
          style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFF747475)
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(r'US Dollar',
            style: AppStyles.styleBold20(context),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Deactivate card',
            style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFF747475)
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const SwitchButton(),



      ],
    );
  }
}


