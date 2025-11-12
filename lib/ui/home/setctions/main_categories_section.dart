import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/home_view.dart';
import 'package:responsive_learn/ui/home/widgets/main_categories_item_widget.dart';

class MainCategoriesSection extends StatelessWidget {
  const MainCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => MainCategoriesItemWidget(),
    );
  }
}
