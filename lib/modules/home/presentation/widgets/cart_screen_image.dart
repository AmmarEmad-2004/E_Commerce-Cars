import 'package:cars_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class CartScreenImage extends StatelessWidget {
  const CartScreenImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff222222),
          boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 0, 0, 0),
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: AspectRatio(
          aspectRatio: 5/4,
          //aspectRatio: 390 / 229,
          child: Image.asset(
            AppImages.car2,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
