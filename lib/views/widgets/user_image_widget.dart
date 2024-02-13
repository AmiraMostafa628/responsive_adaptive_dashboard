import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';

class UserImage extends StatelessWidget {
  const UserImage({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 70,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(AppImages.userImage),
          )
      ),
    );
  }
}