import 'package:cars_app/modules/home/presentation/widgets/custom_car_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 0, 0, 0),
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
        color: Color(0xFF232323),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
        child: CarsList(),
      ),
    );
  }
}

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
