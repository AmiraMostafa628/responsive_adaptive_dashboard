import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_button.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Hello, Amira!",
                style: AppStyles.styleBold28(context),

              ),
            ),
           MediaQuery.of(context).size.width < 420?
           Text('Send and receive funds \n with pleasure.',
             style: AppStyles.styleRegular16(context),
           ) : Text('Send and receive funds with pleasure.',
             style: AppStyles.styleRegular16(context),
           ),

          ],
        ),
       const Spacer(),
        const CustomButton(title: 'Add Payment +',),
        const SizedBox(
          width: 8,
        ),
        const Icon(
            FontAwesomeIcons.ellipsis)

      ],
    );
  }
}
