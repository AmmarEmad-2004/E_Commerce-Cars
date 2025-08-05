import 'package:cars_app/modules/home/presentation/widgets/custom_car_card.dart';
import 'package:flutter/material.dart';

class CarsList extends StatelessWidget {
  const CarsList({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: h * 0.04,
        crossAxisSpacing: w * 0.04,
        crossAxisCount: 2,
        childAspectRatio: 3.4 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCarCard();
      },
    );
  }
}