import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_icon.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11),
      child: Row(
        children: [
          Text('Wallet',
            style: AppStyles.styleBold18(context).copyWith(
                color: const Color(0xFF000000)
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text('Cards | 1 out of 4',
            style: AppStyles.styleRegular12(context),
          ),
          const Spacer(),
          const CustomIcon(iconShape: FontAwesomeIcons.chevronLeft,
            iconColor: Color(0xFFA0A0A0),
            borderColor: Color(0xFFEAEAEA),
          ),
          const SizedBox(
            width: 10,
          ),
          const CustomIcon(iconShape: FontAwesomeIcons.chevronRight),
          const SizedBox(
            width: 10,
          ),





        ],),
    );
  }
}