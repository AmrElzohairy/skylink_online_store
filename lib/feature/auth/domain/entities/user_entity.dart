import 'package:equatable/equatable.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_in_response_model/user.dart';

class UserEntity extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String userName;
  final String email;

  const UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
  });

  factory UserEntity.fromUser(User user) {
    return UserEntity(
      id: user.id?.toString() ?? '',
      firstName: user.firstName?.toString() ?? '',
      lastName: user.lastName?.toString() ?? '',
      userName: user.username ?? '',
      email: user.email ?? '',
    );
  }

  @override
  List<Object?> get props => [id, firstName, lastName, userName, email];
}
