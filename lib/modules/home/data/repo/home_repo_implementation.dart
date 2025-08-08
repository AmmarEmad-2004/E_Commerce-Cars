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

    @override
  Future<Either<String, Unit>> toggleFavourite({
    required String uid,
    required String carId,
  }) async {
    try {
      final userRef = firestore.collection('users').doc(uid);
      final snapshot = await userRef.get();

      if (!snapshot.exists) {
        return left("User not found");
      }

      final List favourites = snapshot.data()?['favorites'] ?? [];

      if (favourites.contains(carId)) {
        await userRef.update({
          'favorites': FieldValue.arrayRemove([carId]),
        });
      } else {
        await userRef.update({
          'favorites': FieldValue.arrayUnion([carId]),
        });
      }

      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }
}
