import 'package:cars_app/modules/home/presentation/widgets/car_rating.dart';
import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CartInfoAndCounter extends StatelessWidget {
  const CartInfoAndCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
        spacing: 10,
        children: [
        Text(
          'Toyota',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ) ),
           Text(
              r'$54,000',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          Row(children: [
            Text('4.5',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )),
            SizedBox(width: 8),
             CarRating(),
          ],),
      ],),
    CartCounter(
      onDecrementTap: (){}, 
      onIncrementTap: (){}, 
    ),
    ],);
  }
}