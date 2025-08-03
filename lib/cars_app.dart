import 'package:cars_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class CarsApp extends StatelessWidget {
  const CarsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      routerConfig: AppRouter.goRouter,
    );
  }
}
