import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/themes/app_colors.dart';
import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/custom_text_feild.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
          ),
          CustomTextField(hint: 'Enter your email'),

          CustomSize(h: 8),
          Text(
            'Password',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
          ),
          CustomTextField(isObscure: true, hint: 'Enter your password'),
          CustomSize(h: 72),
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
