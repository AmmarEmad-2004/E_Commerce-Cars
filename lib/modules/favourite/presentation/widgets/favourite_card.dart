import 'package:flutter/material.dart';
import 'favourite_car_image.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 14, left: 14, bottom: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavouriteCarImage(
              onTap: () {},
            ),
            Text(
              'Toyota',
              //style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              r'$ 54,000',
             // style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}