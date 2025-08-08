import 'dart:io';
import 'package:cars_app/core/helpers/add_car_validation.dart';
import 'package:cars_app/core/helpers/snack_bar.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/add_car/presentation/logic/add_car/add_car_cubit.dart';
import 'package:cars_app/modules/add_car/presentation/widgets/add_car_button.dart';
import 'package:cars_app/modules/add_car/presentation/widgets/image_up_load_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCarForm extends StatefulWidget {
  const AddCarForm({super.key});

  @override
  State<AddCarForm> createState() => _AddCarFormState();
}

class _AddCarFormState extends State<AddCarForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final descController = TextEditingController();
  File? imageFile;

  void clearControllers() {
    nameController.clear();
    priceController.clear();
    descController.clear();
    setState(() {
      imageFile = null;
    });
  }

  // ✅ تعمل dispose لما الصفحة تتقفل
  void disposeControllers() {
    nameController.dispose();
    priceController.dispose();
    descController.dispose();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Car Details',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                ),
                CustomSize(h: 20),
                Text(
                  'Car Name',
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
                ),
                CustomTextFormField(
                  validator:
                      (p0) => AddCarValidations.validateCarName(
                        context,
                        nameController.text,
                      ),
                  hint: 'e.g., Tesla Model 3',
                  controller: nameController,
                ),
                CustomSize(h: 8),
                Text(
                  'Price',
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
                ),
                CustomTextFormField(
                  hint: r'e.g., $45,000',
                  controller: priceController,
                  keyboardType: TextInputType.number,
                ),
                CustomSize(h: 8),
                Text(
                  'Description',
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
                ),
                CustomTextFormField(
                  validator:
                      (p0) => AddCarValidations.validateDescription(
                        context,
                        descController.text,
                      ),
                  maxLines: 4,
                  hint: 'Enter a detailed description of the car...',
                  controller: descController,
                ),
                CustomSize(h: 16),
                ImageUpLoadedBox(
                  onImageSelected: (file) {
                    setState(() {
                      imageFile = file;
                    });
                  },
                  imageFile: imageFile,
                ),
                CustomSize(h: 16),
                BlocConsumer<AddCarCubit, AddCarState>(
                  listener: (context, state) {
                    if (state is AddCarSuccess) {
                      ShowSnackBar.show(context, "Car Added Successfully");
                      clearControllers();
                    } else if (state is AddCarError) {
                      ShowSnackBar.show(context, state.message);
                    }
                  },
                  builder: (context, state) {
                    if (state is AddCarLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return AddCarButton(
                      formKey: _formKey,
                      imageFile: imageFile,
                      nameController: nameController,
                      descController: descController,
                      priceController: priceController,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
