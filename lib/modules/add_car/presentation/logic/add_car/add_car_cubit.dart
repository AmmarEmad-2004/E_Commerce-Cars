import 'package:bloc/bloc.dart';
import 'package:cars_app/modules/add_car/data/repo/add_car_repo.dart';

part 'add_car_state.dart';

class AddCarCubit extends Cubit<AddCarState> {
  final AddCarRepo addCarRepo;

  AddCarCubit(this.addCarRepo) : super(AddCarInitial());

  Future<void> addCar({
    required String name,
    required String description,
    required double price,
    required String imagePath,
  }) async {
    emit(AddCarLoading());

    final result = await addCarRepo.addCar(
      name: name,
      description: description,
      price: price,
      imagePath: imagePath,
    );

    result.fold(
      (error) => emit(AddCarError(error)),
      (_) => emit(AddCarSuccess()),
    );
  }
}
