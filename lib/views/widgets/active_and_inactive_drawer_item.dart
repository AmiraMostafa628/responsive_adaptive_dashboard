import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
  super.key,
  required this.itemModel,
  });

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image,),
      title: Text(itemModel.title,
          style: AppStyles.styleMedium16(context)
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
  super.key,
  required this.itemModel,
  });

  final DrawerItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      title: Text(itemModel.title,
        style: AppStyles.styleSemiBold16(context)
      ),
      trailing: Container(
        width: 3.27,
        color: Colors.white,
      ),
    );
  }
}