import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/helpers/cloudinary_config.dart';

import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/add_car/data/repo/add_car_repo_imple.dart';
import 'package:cars_app/modules/add_car/presentation/logic/add_car/add_car_cubit.dart';
import 'package:cars_app/modules/add_car/presentation/widgets/add_car_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create:
          (context) => AddCarCubit(
            AddCarRepoImpl(
              cloudName: CloudinaryConfig.cloudName,
              uploadPreset: CloudinaryConfig.uploadPreset,
            ),
          ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomSize(h: 30),
            Image.asset(AppImages.addNewCar),
            Divider(),
            AddCarForm(),
          ],
        ),
      ),
    );
  }
}
