import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_card.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/statistics_chart.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/statistics_header.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 12.0),
              child: Row(
                children: [
                  Text('Statistics',
                    style: AppStyles.styleBold18(context),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4F4F4),
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: const StatisticsHeader(),
                  ),
                  const SizedBox(width: 20,)
                ],
              ),
            ),
            const StatisticsChart(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xFF5F1ED9),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text('Money Income',
                  style: AppStyles.styleRegular12(context),
                )
              ],
            ),
            const SizedBox(height: 20.0,)
          ],
        ));
  }
}




