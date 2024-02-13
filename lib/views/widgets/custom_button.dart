import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: const Color(0xFF151718),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: (){},
          child:  Text(title,
            style: AppStyles.styleMedium12(context).copyWith(
              color: const Color(0xFFFFFFFF),
            ),
          )),
    );
  }
}