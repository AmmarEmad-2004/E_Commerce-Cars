import 'package:cars_app/core/widgets/custom_card.dart';

import 'package:cars_app/core/widgets/size.dart';
import 'package:cars_app/modules/auth/presentation/widgets/log_in_form.dart';
import 'package:flutter/material.dart';

class LogInScreenBody extends StatelessWidget {
  const LogInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomCard(
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
                  Text(
                    'Forget your password',
                    style: TextStyle(color: Color(0xff3175b4)),
                  ),
                  CustomSize(h: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Register Now',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff3175b4),
                        ),
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
              top: -170,
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
