import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/quick_transfer_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class QuickTransferTextField extends StatelessWidget {
  const QuickTransferTextField({Key? key, required this.itemModel}) : super(key: key);

  final QuickTransferModel itemModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFF4F4F4),
          ),
        ),

        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Image(
            image: AssetImage(itemModel.image),
            color: Colors.black
            ,),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(itemModel.subTitle,
            style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFA0A0A0)
            ),
          ),
        ),
        hintText: itemModel.title,
        hintStyle: AppStyles.styleRegular14(context).copyWith(
            color: const Color(0xFFA0A0A0)
        ),
      ),
    );
  }
}
