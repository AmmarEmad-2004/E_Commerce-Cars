import 'package:cars_app/core/errors/auth_failuer.dart';
import 'package:cars_app/modules/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<AuthFailure, UserModel>> createUser({
    required String email,
    required String password,
    required String name
  });

  Future<Either<AuthFailure, UserModel>> signIn({
    required String email,
    required String password,
    
  });

  Future<Either<AuthFailure, void>> signOut();
}
