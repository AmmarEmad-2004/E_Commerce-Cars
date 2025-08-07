import 'package:cars_app/modules/auth/data/repo/auth_repo_implementation.dart';
import 'package:cars_app/modules/auth/presentation/logic/log_in_cubit/login_cubit.dart';
import 'package:cars_app/modules/auth/presentation/widgets/log_in_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(AuthRepoImplementation()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: LogInScreenBody(),
        ),
      ),
    );
  }
}
