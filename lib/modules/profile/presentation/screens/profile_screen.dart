import 'package:cars_app/modules/auth/data/repo/auth_repo_implementation.dart';
import 'package:cars_app/modules/profile/presentation/logic/sign_out_cubit/sign_out_cubit.dart';
import 'package:cars_app/modules/profile/presentation/widgets/profile_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: BlocProvider(
        create: (context) => SignOutCubit(AuthRepoImplementation()),
        child: ProfileScreenBody(),
      ),
    );
  }
}
