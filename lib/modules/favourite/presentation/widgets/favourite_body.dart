import 'package:cars_app/modules/favourite/presentation/widgets/favourite_cars_list.dart';
import 'package:flutter/material.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: FavouriteCarsList(),
    );
  }
}