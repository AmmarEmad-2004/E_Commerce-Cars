import 'package:cars_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class FavouriteCarImage extends StatelessWidget {
  const FavouriteCarImage({
    super.key, this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color:  const Color.fromARGB(255, 31, 31, 31),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
            child: IconButton(icon:Icon(Icons.favorite_border_outlined),onPressed:onTap),
          )),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            AppImages.car2,
             // height: MediaQuery.of(context).size.height * 0.16,
              width: double.infinity,
              fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}