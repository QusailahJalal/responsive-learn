import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/models/drawer_item_model.dart';

class CustomDrawerListViewItem extends StatelessWidget {
  const CustomDrawerListViewItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(item.icon),

      title: Text(item.title.toUpperCase(), style: TextStyle(letterSpacing: 5)),
    );
  }
}
