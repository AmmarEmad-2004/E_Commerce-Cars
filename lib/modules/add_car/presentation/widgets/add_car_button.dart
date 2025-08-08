
import 'dart:io';

import 'package:cars_app/core/helpers/snack_bar.dart';
import 'package:cars_app/modules/add_car/presentation/logic/add_car/add_car_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCarButton extends StatelessWidget {
  const AddCarButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.imageFile,
    required this.nameController,
    required this.descController,
    required this.priceController,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final File? imageFile;
  final TextEditingController nameController;
  final TextEditingController descController;
  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            if (imageFile != null) {
              context.read<AddCarCubit>().addCar(
                name: nameController.text,
                description: descController.text,
                price: double.tryParse(priceController.text) ?? 0,
                imagePath: imageFile!.path,
              );
            } else {
              ShowSnackBar.show(context, "Please select an image");
            }
          }
        },
        child: const Text("Add Car"),
      ),
    );
  }
}
