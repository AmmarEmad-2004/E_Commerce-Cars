import 'package:cars_app/core/routing/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreenHeader extends StatelessWidget {
  const CartScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  GoRouter.of(context).go(AppRouters.homeLayout);
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined)),
            Text('My Cart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined))
          ],
        ),
      ),
    );
  }
}