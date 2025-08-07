import 'package:cars_app/modules/auth/data/repo/auth_repo.dart';
import 'package:cars_app/modules/auth/presentation/logic/sign_up_cubit/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;

  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> signUp(String email, String password) async {
    emit(SignUpLoading());

    final result = await authRepo.createUser(email: email,password: password);

    result.fold(
      (failure) => emit(SignUpFailure(failure.message)),
      (user) => emit(SignUpSuccess(user)),
    );
  }
}
