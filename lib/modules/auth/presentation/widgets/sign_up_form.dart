import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
          ),
          CustomTextFormField(hint: 'name'),

          CustomSize(h: 8),
          Text(
            'Email',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
          ),
          CustomTextFormField(hint: 'email'),
          CustomSize(h: 8),
          Text(
            'Password',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
          ),
          CustomTextFormField(isObscure: true, hint: 'password'),
          CustomSize(h: 8),
          Text(
            'Confirm Password',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
          ),
          CustomTextFormField(isObscure: true, hint: 'confirm password'),
          CustomSize(h: 20),
          CustomElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.homeLayout);
            },

            backgroundColor: Color(0xff3175b4),
            child: Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
