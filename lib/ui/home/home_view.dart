import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/setctions/home_veiw_body_section.dart';
import 'package:responsive_learn/ui/home/setctions/main_categories_section.dart';
import 'package:responsive_learn/ui/home/widgets/app_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      key: scaffoldKey,
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
            // Handle menu button press
          },
        ),
      ),
      body: HomeVeiwBodySection(),
    );
  }
}
