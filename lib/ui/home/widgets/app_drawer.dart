import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/models/drawer_item_model.dart';
import 'package:responsive_learn/ui/home/widgets/custom_drawer_list_view.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            DrawerHeader(child: Icon(size: 48, Icons.favorite)),
            Expanded(child: CustomDrawerListView()),
          ],
        ),
      ),
    );
  }
}
