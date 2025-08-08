import 'package:cars_app/modules/layout/logic/cubit/nav_bar_cubit.dart';
import 'package:cars_app/modules/layout/logic/cubit/nav_bar_state.dart';
import 'package:cars_app/modules/layout/logic/cubit/user_cubit/user_cubit.dart';
import 'package:cars_app/modules/layout/widgets/responsive_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserCubit>().state;
    final isManager = user!.isAdmin;
    return BlocProvider(
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
    );
  }
}