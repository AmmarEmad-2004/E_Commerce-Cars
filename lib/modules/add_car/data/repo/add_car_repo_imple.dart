import 'dart:convert';

import 'package:cars_app/modules/add_car/data/models/car_model.dart';
import 'package:cars_app/modules/add_car/data/repo/add_car_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

class AddCarRepoImpl implements AddCarRepo {
  final FirebaseFirestore firestore;
  final String cloudName;
  final String uploadPreset;

  AddCarRepoImpl({
    required this.firestore,
    required this.cloudName,
    required this.uploadPreset,
  });

  @override
  Future<Either<String, Unit>> addCar({
    required String name,
    required String description,
    required double price,
    required String imagePath,
  }) async {
    try {
      // 1. رفع الصورة لـ Cloudinary
      final uploadUrl = Uri.parse(
        "https://api.cloudinary.com/v1_1/$cloudName/image/upload",
      );

      final request =
          http.MultipartRequest("POST", uploadUrl)
            ..fields['upload_preset'] = uploadPreset
            ..files.add(await http.MultipartFile.fromPath('file', imagePath));

      final uploadResponse = await request.send();
      final res = await http.Response.fromStream(uploadResponse);

      if (uploadResponse.statusCode != 200) {
        return left("Image upload failed");
      }

      final data = jsonDecode(res.body);
      final imageUrl = data['secure_url'];

      // 2. إنشاء موديل العربية
      final carId = const Uuid().v4();
      final car = CarModel(
        id: carId,
        name: name,
        description: description,
        price: price,
        imageUrl: imageUrl,
        createdAt: Timestamp.now(),
      );

      // 3. حفظ البيانات في Firestore
      await firestore.collection('cars').doc(carId).set(car.toMap());

      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }
}
