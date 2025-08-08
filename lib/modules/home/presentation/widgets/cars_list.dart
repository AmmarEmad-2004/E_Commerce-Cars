import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/modules/home/presentation/logic/favourite_cubit/add_favourite_cubit.dart';
import 'package:cars_app/modules/home/presentation/logic/home_cubit/home_cubit.dart';
import 'package:cars_app/modules/home/presentation/logic/home_cubit/home_state.dart';
import 'package:cars_app/modules/home/presentation/widgets/custom_car_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CarsList extends StatelessWidget {
  const CarsList({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;
    final currentUserId = FirebaseAuth.instance.currentUser!.uid;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        } else if (state is HomeSuccess) {
          final cars = state.cars;

          if (cars.isEmpty) {
            return const Center(child: Text("No cars found"));
          } else {
            return GridView.builder(
              padding: EdgeInsets.all(w * 0.001),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: h * 0.01,
                crossAxisSpacing: w * 0.01,
                crossAxisCount: 2,
                childAspectRatio: 5 / 6,
              ),
              itemCount: cars.length,
              itemBuilder: (context, index) {
                final car = cars[index];
                final favCubit = context.watch<FavouritesCubit>();
                final isFav = favCubit.isFavourite(car.id);
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouters.myCart, extra: car);
                  },
                  child: CustomCarCard(
                    name: car.name,
                    price: car.price,
                    image: car.imageUrl,
                    isFavourite: isFav,
                    onFavouriteTap: () {
                      favCubit.toggleFavourite(currentUserId, car.id);
                    },
                  ),
                );
              },
            );
          }
        }
        return const SizedBox(child: Text('kbskb'));
      },
    );
  }
}
