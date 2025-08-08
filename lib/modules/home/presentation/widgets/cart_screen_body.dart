import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/add_car/data/models/car_model.dart';
import 'package:cars_app/modules/home/presentation/logic/counter_cubit/counter_cubit.dart';
import 'package:cars_app/modules/home/presentation/widgets/cart_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'cart_info_cart_screen.dart';
import 'cart_screen_image.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final car = GoRouterState.of(context).extra as CarModel?;
    return Column(
      children: [
        CartScreenHeader(),
        CartScreenImage(
          imageUrl: car!.imageUrl, // Default image if null
        ),
        CustomSize(h: 16),
        Expanded(
          child: BlocProvider(
            create: (context) => CounterCubit(),
            child: CarInfoInCartScreen(
              car: car,
            ),
          ),
        ),
      ],
    );
  }
}
