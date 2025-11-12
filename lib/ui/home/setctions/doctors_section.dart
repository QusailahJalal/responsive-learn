import 'package:flutter/material.dart';
import 'package:responsive_learn/ui/home/widgets/doctors_item_widget.dart';

class DoctorsSection extends StatelessWidget {
  const DoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      initialItemCount: 30,
      itemBuilder: (context, index, animation) => DoctorsItemWidget(),
    );
  }
}
