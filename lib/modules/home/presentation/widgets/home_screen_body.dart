import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/home/presentation/widgets/home_body.dart';
import 'package:cars_app/modules/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [HomeHeader(), CustomSize(h: 30), Expanded(child: HomeBody())],
    );
  }
}
