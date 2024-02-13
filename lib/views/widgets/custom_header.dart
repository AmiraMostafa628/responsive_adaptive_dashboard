import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/size_config.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_search_text_field.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/notification_widget.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/user_image_widget.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      height: 80,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width < SizeConfig.tablet?20:40),
            child: SizedBox(
                width: getWidth(context),
                child: const CustomSearchTextField()),
          ),
          const Spacer(),
          const NotificationsWidget(),
          const SizedBox(
            width: 10,
          ),
          const UserImage(),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
  double getWidth(BuildContext context){
    double width = MediaQuery.sizeOf(context).width;
    if(width <SizeConfig.smallMobile){
      return 180;
    }
    else if(width <SizeConfig.tablet)
    {
      return 250;
    }
    else
    {
      return 300;
    }
  }
}




