import 'package:cars_app/modules/home/presentation/widgets/cart_screen_header.dart';
import 'package:flutter/material.dart';
import 'cart_info_cart_screen.dart';
import 'cart_screen_image.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      CartScreenHeader(),
      CartScreenImage(),
      SizedBox(height: 16),
      CarInfoInCartScreen(),
    ],);
  }
}

