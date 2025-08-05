import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/modules/home/presentation/widgets/brand_item.dart';
import 'package:flutter/material.dart';

class BrandList extends StatelessWidget {
  const BrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 15,
      children: [
        BrandItem(image: AppImages.vector, name: 'Mercedes'),
        BrandItem(image: AppImages.vector1, name: 'Opel'),
        BrandItem(image: AppImages.vector2, name: 'VW'),
        BrandItem(image: AppImages.vector7, name: 'Toyota'),
      ],
    );
  }
}
