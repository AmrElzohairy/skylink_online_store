import 'package:equatable/equatable.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_in_response_model/data.dart';

class UserEntity extends Equatable {
  final int id;
  final String accessToken;
  final String firstName;
  final String lastName;
  final String userName;
  final String email;

  const UserEntity(
    this.accessToken, {
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
  });

  factory UserEntity.fromLoginData(LoginData data) {
    return UserEntity(
      data.token ?? '',
      id: data.user?.id ?? 0,
      firstName: data.user?.firstName ?? '',
      lastName: data.user?.lastName ?? '',
      userName: data.user?.username ?? '',
      email: data.user?.email ?? '',
    );
  }

  @override
  List<Object?> get props => [id, firstName, lastName, userName, email];
}
