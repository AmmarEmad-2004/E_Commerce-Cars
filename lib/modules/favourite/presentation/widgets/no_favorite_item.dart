import 'package:cars_app/core/widgets/size.dart';
import 'package:flutter/material.dart';

class NoFavoriteItem extends StatelessWidget {
  const NoFavoriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border, size: 60, color: Colors.grey),
          CustomSize(h: 20),
          Text(
            'No favorite items',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            'You don\'t have any favorite items yet.\nGo to Home and add some!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}