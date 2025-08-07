import 'package:cars_app/modules/home/presentation/widgets/cart_screen_header.dart';
import 'package:flutter/material.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CartScreenHeader(),
    ],);
  }
}
