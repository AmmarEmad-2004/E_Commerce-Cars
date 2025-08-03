import 'package:cars_app/modules/auth/presentation/widgets/log_in_screen_body.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: LogInScreenBody(),
      ),
    );
  }
}
