import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CarRating extends StatelessWidget {
  const CarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4.5,
      itemBuilder: (context, index) => Icon(Icons.star, color: Colors.amber),
      itemCount: 5,
      itemSize: 10,
      direction: Axis.horizontal,
    );
  }
}