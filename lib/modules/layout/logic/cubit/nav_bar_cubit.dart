import 'package:bloc/bloc.dart';
import 'package:cars_app/modules/add_car/presentation/screens/add_car_screen.dart';
import 'package:cars_app/modules/cart/presentation/screens/cart_screen.dart';
import 'package:cars_app/modules/favourite/presentation/screens/favourite_screen.dart';
import 'package:cars_app/modules/home/presentation/screens/home_screen.dart';
import 'package:cars_app/modules/profile/presentation/screens/profile_screen.dart';

import 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit(this.isManager) : super(NavBarState(selectedIndex: 0));
  final bool isManager;
  List get screens {
    if (isManager) {
      return [
        HomeScreen(),
        FavouriteScreen(),
        AddCarScreen(),
        CartScreen(),
        ProfileScreen(),
      ];
    } else {
      return [HomeScreen(), FavouriteScreen(), CartScreen(), ProfileScreen()];
    }
  }

  void changeTab(int index) {
    emit(NavBarState(selectedIndex: index));
  }
}
