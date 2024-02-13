import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.child, this.padding}) : super(key: key);

  final Widget child;
  final double? padding ;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
        side: const BorderSide(
        color: Color(0xFFEEEEEE)),
       borderRadius: BorderRadius.circular(padding??15.0),
       ),
      child: child,

    );
  }
}
