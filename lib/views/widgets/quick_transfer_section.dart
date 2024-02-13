import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_card.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/quick_transfer_body.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/quick_transfer_header.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/quick_transfer_list.dart';

class QuickTransferSection extends StatelessWidget {
  const QuickTransferSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:15.0,vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuickTransferHeader(),
              SizedBox(
                height: 20.0,
              ),
              QuickTransferList(),
              QuickTransferBody(),
              

            ],
          ),
        )
    );
  }
}