import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/quick_transfer_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/quick_transfer_item.dart';

class QuickTransferList extends StatelessWidget {
  const QuickTransferList({Key? key}) : super(key: key);
  
  static const List <QuickTransferModel> items =[
    QuickTransferModel(title: '3149 Debit card',
        subTitle: '2895.15 USD',
        image: AppImages.visaCard),
    QuickTransferModel(title: 'Debit card',
        subTitle: 'EUROPIAN',
        image: AppImages.debitCard),
    QuickTransferModel(title: '3149 Debit card',
        subTitle: '2895.15 USD',
        image: AppImages.visaCard),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: QuickTransferItem(itemModel: e))).toList(),
      ),
    );
  }
}
