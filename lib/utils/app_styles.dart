import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/size_config.dart';


abstract class AppStyles{

  static TextStyle styleBold28(context){
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold20(context){
    return TextStyle(
      color: const Color(0xFF303031),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold18(context){
    return TextStyle(
      color: const Color(0xFF303031),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold18(context){
    return TextStyle(
      color: const Color(0xFF303031),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular16(context){
    return TextStyle(
      color: const Color(0xFF848484),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return  TextStyle(
      color: const Color(0xFF747475),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return  TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context){
    return TextStyle(
      color: const Color(0xFF9F9F9F),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium14(context){
    return TextStyle(
      color: const Color(0xFF000000),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium12(context){
    return TextStyle(
      color: const Color(0xFF848484),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular12(context){
    return TextStyle(
      color: const Color(0xFF848484),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

}


double getResponsiveFontSize(BuildContext context,{required double fontSize})
{
  double scaleFactor = getScaleFactor(context);

  double responsiveFontSize = fontSize *scaleFactor;

  double lowerLimit = fontSize *.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}


double getScaleFactor(BuildContext context){
  double width = MediaQuery.sizeOf(context).width;
  if(width <SizeConfig.tablet){
      return width/550;
    }
  else if(width <SizeConfig.desktop)
  {
    return width/1000;
  }
  else
  {
    return width/1350;
  }
}

// another way to axis the width of screen in the tablet and mobile
// because doesn't need to rebuild everytime as web that MediaQuery is better for it
/*
var dispatcher = PlatformDispatcher.instance;
var physicalWidth = dispatcher.views.first.physicalSize.width;
var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

double width = physicalWidth/devicePixelRatio;*/
