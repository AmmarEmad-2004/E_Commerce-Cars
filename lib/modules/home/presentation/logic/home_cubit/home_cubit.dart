import 'package:bloc/bloc.dart';
import 'package:cars_app/modules/home/data/repo/home_repo.dart';
import 'package:cars_app/modules/home/presentation/logic/home_cubit/home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeInitial());

  Future<void> fetchCars() async {
    emit(HomeLoading());
    final result = await homeRepo.getAllCars();
    result.fold(
      (error) => emit(HomeError(error)),
      (cars) => emit(HomeSuccess(cars)),
    );
  }
}
