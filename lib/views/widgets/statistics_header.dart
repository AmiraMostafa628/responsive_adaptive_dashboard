import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class StatisticsHeader extends StatelessWidget {
  const StatisticsHeader({Key? key}) : super(key: key);

  static const List <String> items =['1D','1W','1M','6M','1Y'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.map((e) => CustomText(text: e)).toList(),
    );
  }
}


class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: text=='1M'?Padding(
        padding: const EdgeInsets.only(right: 20.0,left: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            child: Text(text,
              style: AppStyles.styleRegular14(context).copyWith(
                  color: const Color(0xFF848484)
              ),
            ),
          ),
        ),
      ):Padding(
        padding: const EdgeInsets.only(right: 20.0,top: 5.0,bottom: 5.0,left: 5.0),
        child: Text(text,
          style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFF848484)
          ),
        ),
      ),
    );
  }
}