import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/core/widgets/custom_background.dart';
import 'package:cars_app/core/widgets/custom_text_button.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/auth/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

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
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Create Your\nAccount',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SignUpForm(),
                  CustomSize(h: 16),

                  CustomSize(h: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(fontSize: 14),
                      ),
                      CustomTextButton(
                        text: 'Sign In',
                        onPressed: () {
                          GoRouter.of(context).push(AppRouters.logIn);
                        },
                      ),
                    ],
                  ),
                  CustomSize(h: 20),
                ],
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: -170,
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
