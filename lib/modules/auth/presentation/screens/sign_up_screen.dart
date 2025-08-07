import 'package:cars_app/modules/auth/data/repo/auth_repo_implementation.dart';
import 'package:cars_app/modules/auth/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:cars_app/modules/auth/presentation/widgets/sign_up_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(AuthRepoImplementation()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SignUpScreenBody(),
        ),
      ),
    );
  }
}
