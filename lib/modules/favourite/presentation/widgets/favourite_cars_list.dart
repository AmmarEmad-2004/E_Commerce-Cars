import 'package:cars_app/modules/favourite/presentation/widgets/favourite_card.dart';
import 'package:flutter/material.dart';

class FavouriteCarsList extends StatelessWidget {
  const FavouriteCarsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.71,
        ),
        itemBuilder: (context, index) {
          return FavouriteCard();
        },
      ),
    );
  }
}
