import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cars_app/modules/auth/data/models/user_model.dart';

class UserCubit extends Cubit<UserModel?> {
  UserCubit() : super(null);

  void setUser(UserModel user) {
    emit(user);
  }

  Future<void> updateUser({
    required String name,
    required File image,
  }) async {
    if (state != null) {
      final updatedUser = UserModel(
        name: name,
        email: state!.email,
        image: image as String, // Assuming image is a path or URL
        isAdmin: state!.isAdmin,
        uid: state!.uid,
        favorites: state!.favorites,
      );
      emit(updatedUser);

      // تعديل في Firebase
      await FirebaseFirestore.instance
          .collection('users')
          .doc(state!.email) // أو doc(state!.id) لو عندك id
          .update({
        'name': name,
        'image': image,
      });
    }
  }
}
