import 'package:cars_app/modules/add_car/data/models/car_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<CarModel>>> getAllCars();
    Future<Either<String, Unit>> toggleFavourite({
    required String uid,
    required String carId,
  });
}