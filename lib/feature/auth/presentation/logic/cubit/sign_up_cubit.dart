import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_up_body.dart';
import 'package:rika_online_store/feature/auth/domain/repo/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;

  Future<void> signUp(SignUpBody signUpBody) async {
    emit(SignUpLoading());
    var result = await authRepo.signUp(signUpBody);
    result.fold(
      (failure) {
        emit(SignUpFailure(failure.message));
      },
      (success) {
        emit(SignUpSuccess(success));
      },
    );
  }
}
