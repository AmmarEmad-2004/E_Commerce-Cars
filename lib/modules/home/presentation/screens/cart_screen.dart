import 'package:cars_app/modules/home/presentation/widgets/cart_screen_body.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartScreenBody(),
    );
  }
}

