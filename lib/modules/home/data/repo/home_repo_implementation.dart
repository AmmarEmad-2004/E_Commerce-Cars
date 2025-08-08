import 'package:cars_app/modules/add_car/data/models/car_model.dart';
import 'package:cars_app/modules/home/data/repo/home_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<Either<String, List<CarModel>>> getAllCars() async {
    try {
      final querySnapshot =
          await firestore
              .collection('cars')
              .orderBy('createdAt', descending: true)
              .get();

      final cars =
          querySnapshot.docs
              .map((doc) => CarModel.fromMap(doc.data()))
              .toList();


      return Right(cars);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
