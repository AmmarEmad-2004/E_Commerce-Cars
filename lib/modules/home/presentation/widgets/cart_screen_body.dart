import 'package:cars_app/core/widgets/size.dart';
<<<<<<< HEAD
import 'package:cars_app/modules/home/presentation/logic/counter_cubit/counter_cubit.dart';
=======
import 'package:cars_app/modules/home/presentation/logic/cubit/counter_cubit.dart';
>>>>>>> f0e3e05c8e80fb0b470133c047e6b06389785052
import 'package:cars_app/modules/home/presentation/widgets/cart_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_info_cart_screen.dart';
import 'cart_screen_image.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartScreenHeader(),
        CartScreenImage(),
        CustomSize(h: 16),
        Expanded(
          child: BlocProvider(
            create: (context) => CounterCubit(),
            child: CarInfoInCartScreen(),
          ),
        ),
      ],
    );
  }
}
