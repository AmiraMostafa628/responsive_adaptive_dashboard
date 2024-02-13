import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_header.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/details&card&statistics_section.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/transaction&quick_transfer_section.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/welcome_header.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CustomHeader(),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                  child: WelcomeHeader(),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                          child: CardAndStatisticsSection()),
                      SizedBox(width: 25,),
                      Expanded(
                        flex: 2,
                          child: TransactionAndQuickTransfer())
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}

