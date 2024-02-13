import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/custom_drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width *.6,
      color: const Color(0xFF151718),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: SvgPicture.asset(AppImages.investBank,),
              title: Text('InvestBank',
                style: AppStyles.styleSemiBold18(context).copyWith(
                  color: const Color(0xFFFFFFFF)
                )
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              height: 24,
              color: Color(0xFF303031),
            ),
          ),
          const CustomDrawerListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(itemModel: DrawerItemModel(image: AppImages.help,
                  title: 'Help'
                )),
                InActiveDrawerItem(itemModel: DrawerItemModel(image: AppImages.setting,
                    title: 'Setting'
                )),
                SizedBox(
                  height: 20,
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}


