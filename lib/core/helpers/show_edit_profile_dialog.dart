import 'dart:io';

import 'package:cars_app/core/constants/app_images.dart';
import 'package:cars_app/core/helpers/image_helper.dart';
import 'package:cars_app/core/helpers/validation.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/layout/logic/cubit/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showEditProfileDialog(BuildContext context, String currentName, String currentImage) {
  final nameController = TextEditingController(text: currentName);
 File? newImageFile;
  showDialog(
    context: context,
    builder:
        (_) => AlertDialog(
          content: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Edit Profile', style: TextStyle(fontSize: 18)),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close, size: 20),
                    ),
                  ],
                ),
                CustomSize(h: 25),
                GestureDetector(
                  onTap: () async {
                    final imageFile = await pickImageFromGallery();
                    if (imageFile != null) {
                      newImageFile = imageFile;
                      
                    }
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: newImageFile != null
                        ? FileImage(newImageFile!)
                        : (currentImage.trim().isNotEmpty
                            ? NetworkImage(currentImage)
                            : AssetImage(AppImages.person)) as ImageProvider,
                  ),
                ),

                CustomTextFormField(
                  validator:
                      (p0) => Validations.validateName(
                        context,
                        nameController.text,
                      ),
                  controller: nameController,
                  hint: 'Update your email',
                ),
                CustomElevatedButton(
                  onPressed: () async{
                    await context.read<UserCubit>().updateUser(
                        name: nameController.text.trim(),
                        image: newImageFile!,
                      );
                    Navigator.pop(context);
                  },
                  backgroundColor: Color(0xff3175b4),
                  child: Text('Update'),
                ),
              ],
            ),
          ),
        ),
  );
}


// Update the UI to show the new image
                      // context.read<UserCubit>().setUser(
                      //   UserModel(
                      //     name: nameController.text,
                      //     email: currentName, // Assuming email is the same as name for this example
                      //     image: newImageFile!.path,
                      //     isAdmin: false, // Assuming isAdmin is false for this example
                      //     uid: '', // Assuming uid is empty for this example
                      //     favorites: [], // Assuming favorites is an empty list for this example
                      //   ),
                      // );