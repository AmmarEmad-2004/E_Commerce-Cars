import 'package:cars_app/modules/auth/data/models/user_model.dart';
import 'package:cars_app/modules/layout/logic/cubit/nav_bar_cubit.dart';
import 'package:cars_app/modules/layout/logic/cubit/nav_bar_state.dart';
import 'package:cars_app/modules/layout/widgets/responsive_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  //final UserModel user;
  @override
  Widget build(BuildContext context) {
    final user = GoRouterState.of(context).extra as UserModel;
    final isManager = user.isAdmin;
    return MultiRepositoryProvider(
      providers: [RepositoryProvider.value(value: user)],
      child: BlocProvider(
        create: (context) => NavBarCubit(isManager),
        child: Scaffold(
          body: BlocBuilder<NavBarCubit, NavBarState>(
            builder: (context, state) {
              final screens = context.read<NavBarCubit>().screens;
              return screens[state.selectedIndex];
            },
          ),
          bottomNavigationBar: ResponsiveNavbar(isManager: isManager),
        ),
      ),
    );
  }
}
