import 'package:cars_app/modules/auth/data/models/user_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final UserModel user;
  LoginSuccess(this.user);
}

class LoginFailure extends LoginState {
  final String message;
  LoginFailure(this.message);
}
