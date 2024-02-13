import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/views/widgets/draw_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({
  super.key,
  });

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title:'Dashboard',image: AppImages.dashboard),
    DrawerItemModel(title:'Analytics',image: AppImages.analytics),
    DrawerItemModel(title:'Payments',image: AppImages.payment),
    DrawerItemModel(title:'Deposit',image: AppImages.deposit),
    DrawerItemModel(title:'Moneybox',image: AppImages.moneybox),
    DrawerItemModel(title:'Securities',image: AppImages.securities),


  ];
  int isSelected=0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              if(isSelected != index )
                {
                  setState(() {
                    isSelected=index;
                  });
                }
            },
              child: DrawerItem(itemModel: items[index], isActive: isSelected==index,));

        }
    );
  }
}