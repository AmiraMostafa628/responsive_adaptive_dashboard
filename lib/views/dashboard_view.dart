import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/size_config.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey= GlobalKey();

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width );
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet ?AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu,color: Colors.black,)),
      ):null,
      drawer: MediaQuery.sizeOf(context).width <SizeConfig.tablet ?
      const CustomDrawer():null,
      body: AdaptiveLayout(
        mobileLayout: (context)=>const DashBoardMobileLayout(),
        tabletLayout: (context)=>const DashBoardTabletLayout(),
        desktopLayout: (context)=>const DashBoardDesktopLayout(),),
    );
  }
}
