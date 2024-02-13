import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/active_and_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.itemModel, required this.isActive}) : super(key: key);

  final DrawerItemModel itemModel;
  final bool isActive;



  @override
  Widget build(BuildContext context) {
    return isActive?ActiveDrawerItem(itemModel: itemModel)
        :InActiveDrawerItem(itemModel: itemModel);
  }
}


