import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/add_car/presentation/widgets/image_up_load_box.dart';
import 'package:flutter/material.dart';

class AddCarForm extends StatelessWidget {
  const AddCarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
              CustomTextField(hint: 'e.g., Tesla Model 3'),

              CustomSize(h: 8),
              Text(
                'Price',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextField(hint: r'e.g., $45,000'),
              CustomSize(h: 8),
              Text(
                'Password',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextField(isObscure: true, hint: 'password'),
              CustomSize(h: 8),
              Text(
                'Description',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
              CustomTextField(
                maxLines: 4,
                hint: 'Enter a detailed description of the car...',
              ),
              CustomSize(h: 16),
              ImageUpLoadedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
