import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/quick_transfer_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/quick_transfer_textField.dart';

class QuickTransferBody extends StatelessWidget {
  const QuickTransferBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickTransferTextField(
            itemModel: QuickTransferModel(
                title: 'Card or phone',
                image: AppImages.creditCardPhone,
                subTitle: ''
            ),),
          const SizedBox(
            height: 10.0,
          ),
          const QuickTransferTextField(
            itemModel: QuickTransferModel(
                title: 'Preferred amount',
                image: AppImages.dollarCircle,
                subTitle: 'USD'
            ),),
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(AppImages.percentage)),
              CustomButton(title: 'Get Started ->')
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text('Create a new deposit!',
            style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xFF303031)
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text('Choose a flexible deposit for your savings suited to your needs in InvestBank,',
            style: AppStyles.styleMedium14(context).copyWith(
              color: const Color(0xFF848484),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
