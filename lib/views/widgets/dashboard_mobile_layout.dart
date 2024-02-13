import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_header.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/details&card&statistics_section.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/transaction&quick_transfer_section.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/welcome_header.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CustomHeader(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: WelcomeHeader(),
          ),
          CardAndStatisticsSection(),
          TransactionAndQuickTransfer()
        ],
      ),
    );
  }
}
