import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/details_item_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_card.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key, required this.itemModel}) : super(key: key);

  final DetailsItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0,top: 10.0),
                child: Text(itemModel.title,
                  style: AppStyles.styleMedium12(context),

                ),
              ),
              subtitle: Text(itemModel.price,
                style: AppStyles.styleSemiBold18(context),

              ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left: 15,right: 20),
              child: Row(
                children: [
                  Text(itemModel.date,
                      style: AppStyles.styleMedium12(context)

                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Text(itemModel.percent,
                    style: AppStyles.styleMedium12(context).copyWith(
                        color: itemModel.percentColor
                    ),

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}