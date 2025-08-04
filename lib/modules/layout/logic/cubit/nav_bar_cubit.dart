import 'package:bloc/bloc.dart';

import 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState(selectedIndex: 0));

  // final List<Widget> screens = const [
  //   HomeScreen(),
  //   FavouriteScreen(),
  //   CartScreen(),
  //   ProfileScreen(),
  // ];

  // // لو فيه مانجر هتظهرله AddCarScreen ف النص
  // final List<Widget> managerScreens = const [
  //   HomeScreen(),
  //   FavouriteScreen(),
  //   AddCarScreen(),
  //   CartScreen(),
  //   ProfileScreen(),
  // ];
  void changeTab(int index) {
    emit(NavBarState(selectedIndex: index));
  }
}
