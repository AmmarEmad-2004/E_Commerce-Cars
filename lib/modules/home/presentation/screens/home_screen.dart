import 'package:cars_app/modules/home/data/repo/home_repo_implementation.dart';
import 'package:cars_app/modules/home/presentation/logic/home_cubit/home_cubit.dart';
import 'package:cars_app/modules/home/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeRepoImpl()),
      child: HomeScreenBody(),
    );
  }
}
