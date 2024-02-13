import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/card_section.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/details_list_widget.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/statistics_section.dart';

class CardAndStatisticsSection extends StatelessWidget {
  const CardAndStatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsListWidget(),
        SizedBox(height: 10,),
        CardSection(),
        SizedBox(height: 10,),
        StatisticsSection(),
        SizedBox(height: 10,),
      ],
    );
  }
}
