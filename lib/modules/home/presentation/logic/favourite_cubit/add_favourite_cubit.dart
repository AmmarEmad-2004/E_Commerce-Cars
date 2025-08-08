import 'package:bloc/bloc.dart';
import 'package:cars_app/modules/home/data/repo/home_repo.dart';
import 'package:cars_app/modules/home/presentation/logic/favourite_cubit/add_favourite_state.dart';

class FavouritesCubit extends Cubit<AddFavouriteState> {
  final HomeRepo repo;

  List<String> favourites = []; 

  FavouritesCubit(this.repo) : super(AddFavouritesInitial());

  Future<void> toggleFavourite(String uid, String carId) async {
    emit(AddFavouritesLoading());

    final result = await repo.toggleFavourite(uid: uid, carId: carId);

    result.fold(
      (error) => emit(AddFavouritesError(error)),
      (_) {
        if (favourites.contains(carId)) {
          favourites.remove(carId);
        } else {
          favourites.add(carId);
        }
        emit(AddFavouritesSuccess(favourites));
      },
    );
  }

  bool isFavourite(String carId) {
    return favourites.contains(carId);
  }

  void setInitialFavourites(List<String> favs) {
    favourites = favs;
    emit(AddFavouritesSuccess(favourites));
  }
}
