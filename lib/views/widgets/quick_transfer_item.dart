import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/quick_transfer_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_card.dart';

class QuickTransferItem extends StatelessWidget {
  const QuickTransferItem({Key? key, required this.itemModel}) : super(key: key);

  final QuickTransferModel itemModel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: 8.0,
      child: ListTile(
        leading: CustomImage(itemModel: itemModel),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(itemModel.title,
            style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFF848484)
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(itemModel.subTitle,
          style: AppStyles.styleMedium14(context).copyWith(
            color: const Color(0xFF303031)
          ),),
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.itemModel,
  });

  final QuickTransferModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Container(
          width: 72,
          height: 48,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(itemModel.image,),
            )
          ),
        ),
        const Positioned(
          bottom: 24,
          right: 48,
          child: CircleAvatar(
            radius: 14,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Color(0xFFF69A12),
              child: Image(image: AssetImage(AppImages.star),
                width: 14,
              ),
            ),
          )
        ),

      ],
    );
  }
}





