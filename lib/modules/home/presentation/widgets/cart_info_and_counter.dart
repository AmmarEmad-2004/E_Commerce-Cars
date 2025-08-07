import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/home/presentation/manager/cubit/counter_cubit.dart';
import 'package:cars_app/modules/home/presentation/widgets/car_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_counter.dart';

class CartInfoAndCounter extends StatelessWidget {
  const CartInfoAndCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 10,
          children: [
            Text(
              'Toyota',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              r'$54,000',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                CustomSize(w: 8),
                CarRating(),
              ],
            ),
          ],
        ),
        BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return CartCounter(
              counterText: state is CounterSuccess ? state.count.toString() : '1',
              onDecrementTap: () {
                context.read<CounterCubit>().decrement(54000); 
              },
              onIncrementTap: () {
                context.read<CounterCubit>().increment(54000); 
              });
          },
        ),
      ],
    );
  }
}
