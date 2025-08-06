import 'package:cars_app/core/constants/app_images.dart';

import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/add_car/presentation/widgets/add_car_form.dart';
import 'package:flutter/material.dart';

class AddCarScreen extends StatelessWidget {
  const AddCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AddCarScreenBody();
  }
}

class AddCarScreenBody extends StatelessWidget {
  const AddCarScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSize(h: 30),
          Image.asset(AppImages.addNewCar),
          Divider(),
          AddCarForm(),
        ],
      ),
    );
  }
}
