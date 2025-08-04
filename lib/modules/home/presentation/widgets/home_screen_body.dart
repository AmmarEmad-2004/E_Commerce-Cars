import 'package:cars_app/modules/home/presentation/widgets/custom_header.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Stack(children: [CustomHeader()]));
  }
}
