import 'package:cars_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      child: Center(child: CustomCarCard()),
    );
  }
}

class CustomCarCard extends StatelessWidget {
  const CustomCarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF2C2C2E),
      child: Column(
        children: [
          Icon(Icons.favorite_outline_sharp),
          SvgPicture.asset(AppImages.car1),
          Text('toyta'),
          Row(children: [Text('54000')]),
        ],
      ),
    );
  }
}
