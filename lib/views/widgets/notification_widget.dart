import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: 80,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFBFBFBF),
            ),
          ),
          child: const Center(
            child: Icon(FontAwesomeIcons.bell,
              color: Color(0xFFA0A0A0),
              size: 20.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 2,top: 18),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.purple,

          ),
        ),
      ],
    );
  }
}