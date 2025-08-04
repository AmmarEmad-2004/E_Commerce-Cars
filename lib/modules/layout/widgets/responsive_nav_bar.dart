import 'package:cars_app/modules/layout/logic/cubit/nav_bar_cubit.dart';
import 'package:cars_app/modules/layout/logic/cubit/nav_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class ResponsiveNavbar extends StatelessWidget {
  final bool isManager;

  const ResponsiveNavbar({super.key, required this.isManager});

  @override
  Widget build(BuildContext context) {
    final items = <NavigationBarButton>[
      navBarButton(icon: Icons.home, title: 'Home'),
      navBarButton(icon: Icons.favorite_outlined, title: 'Fav'),
      if (isManager) navBarButton(icon: Icons.add, title: 'Add Car'),
      navBarButton(icon: Icons.shopping_cart, title: 'Cart'),
      navBarButton(icon: Icons.person, title: 'Profile'),
    ];

    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return ResponsiveNavigationBar(
          selectedIndex: state.selectedIndex,
          onTabChange: (index) {
            context.read<NavBarCubit>().changeTab(index);
          },
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Color(0xFF1A1A1A),
          navigationBarButtons: items,
        );
      },
    );
  }

  NavigationBarButton navBarButton({
    required String title,
    required IconData icon,
  }) {
    return NavigationBarButton(
      backgroundGradient: LinearGradient(
        colors: [Color(0xFF00F260), Color(0xFF0575E6)],
      ),
      icon: icon,
      text: title,
    );
  }
}
