import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/models/drawer_item_model.dart';
import 'package:responsive_learn/ui/home/widgets/app_drawer.dart';
import 'package:responsive_learn/ui/home/widgets/custom_drawer_list_view_item.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'dashboard', icon: Icons.home),
    DrawerItemModel(title: 'settings', icon: Icons.settings),
    DrawerItemModel(title: 'about', icon: Icons.help),
    DrawerItemModel(title: 'logout', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) =>
          CustomDrawerListViewItem(item: items[index]),
    );
  }
}
