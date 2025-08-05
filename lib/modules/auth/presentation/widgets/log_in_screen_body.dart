import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:cars_app/core/widgets/custom_text_button.dart';

import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/auth/presentation/widgets/log_in_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInScreenBody extends StatelessWidget {
  const LogInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomBackground(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  LoginForm(),
                  CustomSize(h: 16),
                  CustomTextButton(
                    text: 'Forget your password',
                    onPressed: () {},
                  ),
                  CustomSize(h: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 14),
                      ),
                      CustomTextButton(
                        text: 'Register Now',
                        onPressed: () {
                          GoRouter.of(context).push(AppRouters.signUp);
                        },
                      ),
                    ],
                  ),
                  CustomSize(h: 48),
                ],
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: -180,
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
