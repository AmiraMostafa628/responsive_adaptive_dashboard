import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/card_details.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/card_header.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_card.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/my_card.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CardHeader(),
              const SizedBox(height: 10,),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Flexible(child: MyCard()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: 1,
                        height: 200,
                        color: const Color(0xFFEAEAEA),
                      ),
                    ),
                    const CardDetails(),


                  ]
              ),
            ],
          ),
        ));
  }
}




