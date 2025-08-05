import 'package:cars_app/modules/layout/logic/cubit/nav_bar_cubit.dart';
import 'package:cars_app/modules/layout/logic/cubit/nav_bar_state.dart';
import 'package:cars_app/modules/layout/widgets/responsive_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key, required this.isManager});
  final bool isManager;
  @override
  Widget build(BuildContext context) {
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
