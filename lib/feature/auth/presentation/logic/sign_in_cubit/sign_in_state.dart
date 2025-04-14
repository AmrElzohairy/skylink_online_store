part of 'sign_in_cubit.dart';

sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInSuccess extends SignInState {
  final UserEntity userEntity;
  const SignInSuccess(this.userEntity);
  @override
  List<Object> get props => [userEntity];
}

final class SignInFailure extends SignInState {
  final String errorMessage;

  const SignInFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
