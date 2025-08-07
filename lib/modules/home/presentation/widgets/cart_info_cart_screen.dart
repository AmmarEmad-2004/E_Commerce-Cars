import 'package:flutter/material.dart';

import 'cart_info_and_counter.dart';

class CarInfoInCartScreen extends StatelessWidget {
  const CarInfoInCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff222222),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          CartInfoAndCounter(),
        ],),
      ),
    );
  }
}

