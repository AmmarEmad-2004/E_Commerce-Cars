
import 'package:cars_app/modules/home/presentation/widgets/brand_list.dart';
import 'package:flutter/material.dart';

class FavouriteHeader extends StatelessWidget {
  const FavouriteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF121212)),
      child: BrandList(),
    );
  }
}