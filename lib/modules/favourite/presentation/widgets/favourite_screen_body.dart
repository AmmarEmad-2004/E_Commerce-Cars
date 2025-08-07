import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/favourite/presentation/widgets/favourite_body.dart';
import 'package:cars_app/modules/favourite/presentation/widgets/favourite_header.dart';
import 'package:flutter/material.dart';

class FavouriteScreenBody extends StatelessWidget {
  const FavouriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSize(h: 30),
        FavouriteHeader(),
        CustomSize(h: 30),
        Expanded(child: FavouriteBody()),
      ],
    );
  }
}
