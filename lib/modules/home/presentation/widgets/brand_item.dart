import 'package:cars_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.image, required this.name});
  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppImages.vector),
        Text(name, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}