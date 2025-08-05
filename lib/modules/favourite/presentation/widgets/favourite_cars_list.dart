import 'package:cars_app/modules/favourite/presentation/widgets/favourite_card.dart';
import 'package:flutter/material.dart';

class FavouriteCarsList extends StatelessWidget {
  const FavouriteCarsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: AspectRatio(aspectRatio: 5 / 4, child: FavouriteCard()),
        );
      },
    );
  }
}