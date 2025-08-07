import 'package:cars_app/core/errors/auth_failuer.dart';
import 'package:cars_app/modules/auth/data/models/user_model.dart';
import 'package:cars_app/modules/auth/data/repo/auth_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImplementation implements AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<AuthFailure, UserModel>> createUser({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;

      // 🔐 التحقق هل هو مدير ولا لأ
      bool isAdmin = user!.uid == "HJ0zd3S2UxTU1ne8P6ZxVVssQo92";

      final userModel = UserModel(
        uid: user.uid,
        name: name,
        email: email,
        image: " ",
        favorites: [],
        isAdmin: isAdmin,
      );

      await _firestore.collection('users').doc(user.uid).set(userModel.toMap());

      return right(userModel);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseAuthFailure.fromFirebaseAuthException(e));
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;

      final doc = await _firestore.collection('users').doc(user!.uid).get();

      if (!doc.exists) {
        return left(FirebaseAuthFailure(message: "User data not found "));
      }

      final userModel = UserModel.fromMap(doc.data()!);
      return right(userModel);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseAuthFailure.fromFirebaseAuthException(e));
    }
  }

  @override
  Future<Either<AuthFailure, void>> signOut() async {
    try {
      await _auth.signOut();
      return right(null);
    } catch (e) {
      return left(FirebaseAuthFailure(message: e.toString()));
    }
  }
}
