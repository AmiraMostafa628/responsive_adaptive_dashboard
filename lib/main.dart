import 'dart:ui';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/dashboard_view.dart';

void main() {

  runApp(
     DevicePreview(
        enabled:false,
        builder: (BuildContext context){
          return const ResponsiveAndAdaptiveDashBoard();}
    ),
  );
}

class ResponsiveAndAdaptiveDashBoard extends StatelessWidget {
  const ResponsiveAndAdaptiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}

