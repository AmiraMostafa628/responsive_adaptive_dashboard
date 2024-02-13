import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            width: 291,
            height: 170,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: AlignmentDirectional.centerEnd,
                image: AssetImage(AppImages.cardDecoration,
                ),

              ),
            ),
          ),
          const CardInfo(),


        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 196,
      width: 335,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            width: 325,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                alignment: AlignmentDirectional.topEnd,
                image: AssetImage(AppImages.rectangle19),

              ),
              color: const Color(0xFF151718),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Image.asset(AppImages.visa),
                ),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40,right: 15),
                      child: SvgPicture.asset(AppImages.imageCard),
                    )),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text('Card Number',
                        style: AppStyles.styleRegular14(context)
                    ),
                  ),
                  subtitle: Text('5783 4160 8526 3149',
                    style: AppStyles.styleMedium16(context).copyWith(
                        color: const Color(0xFFFFFFFF)
                    ),
                  ),
                ),
                const Flexible(
                  child: SizedBox(
                    height: 26,),
                )

              ],
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(AppImages.rectangle18))
        ],
      ),
    );
  }
}


