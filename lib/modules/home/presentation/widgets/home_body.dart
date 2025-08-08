import 'package:cars_app/modules/home/presentation/logic/home_cubit/home_cubit.dart';
import 'package:cars_app/modules/home/presentation/widgets/cars_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    context.read<HomeCubit>().fetchCars();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 0, 0, 0),
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
        color: Color(0xFF232323),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
        child: CarsList(),
      ),
    );
  }
}
