import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/user_image_widget.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(child: SizedBox(
            height:55,
            width: 65,
            child: UserImage())),
        const SizedBox(
          width: 5.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                children: [
                  Text('Amira Mostafa ',
                    style: AppStyles.styleMedium16(context).copyWith(
                        color: const Color(0xFFFFFFFF)
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(FontAwesomeIcons.chevronDown,
                      size: 13.0,
                      color: Color(0xFF747475),
                    ),
                  )
                ],
              ),
            ),
            Text('amiraMostafa@gmail.com ',
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRegular13(context),
            ),
          ],
        )

      ],
    );
  }
}