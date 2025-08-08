import 'package:cars_app/modules/auth/data/repo/auth_repo.dart';
import 'package:cars_app/modules/profile/presentation/logic/sign_out_cubit/sign_out_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignOutCubit extends Cubit<SignOutState> {
  final AuthRepo authRepo;

  SignOutCubit(this.authRepo) : super(SignOutInitial());

  Future<void> signOut() async {
    emit(SignOutLoading());

    final result = await authRepo.signOut();

    result.fold(
      (failure) => emit(SignOutFailure(failure.message)),
      (_) => emit(SignOutSuccess()),
    );
  }
}
