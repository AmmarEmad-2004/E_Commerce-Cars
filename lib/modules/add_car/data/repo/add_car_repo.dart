
import 'package:dartz/dartz.dart';

abstract class AddCarRepo {
  Future<Either<String, Unit>> addCar({
    required String name,
    required String description,
    required double price,
    required String imagePath,
  });
}
