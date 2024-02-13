import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.iconShape, this.iconColor, this.borderColor}) : super(key: key);

  final IconData iconShape;
  final Color? iconColor;
  final Color? borderColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor??const Color(0xFFBFBFBF),
        ),
      ),
      child: Center(
        child: Icon(iconShape,
          color: iconColor??const Color(0xFF848484),
          size: 14.0,
        ),
      ),
    );
  }
}
