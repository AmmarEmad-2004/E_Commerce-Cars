import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/modules/home/presentation/widgets/car_rating.dart';
import 'package:flutter/material.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2C2C2E),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 14, left: 14, bottom: 11),
        child: Stack(
          children: [
            Icon(Icons.favorite_outline_sharp),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppImages.car2,

                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),

            Positioned(
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('toyta'), Text(r'$54,000')],
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('4.5'), CarRating()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
