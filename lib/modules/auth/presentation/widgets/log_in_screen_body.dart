import 'package:flutter/material.dart';

class LogInScreenBody extends StatelessWidget {
  const LogInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Image.asset('assets/images/logo.png'),
        //  CustomCard()
         ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
