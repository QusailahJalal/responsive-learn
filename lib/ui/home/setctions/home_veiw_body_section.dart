import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/setctions/doctors_section.dart';
import 'package:responsive_learn/ui/home/setctions/main_categories_section.dart';
import 'package:responsive_learn/ui/home/widgets/doctors_item_widget.dart';

class HomeVeiwBodySection extends StatelessWidget {
  const HomeVeiwBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [MainCategoriesSection(), DoctorsSection()],
      ),
    );
  }
}
