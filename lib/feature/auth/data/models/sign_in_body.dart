import 'package:equatable/equatable.dart';

class SignInBody extends Equatable {
  final String username;
  final String password;

  const SignInBody({required this.username, required this.password});

  factory SignInBody.fromJson(Map<String, dynamic> json) => SignInBody(
    username: json['username'] as String,
    password: json['password'] as String,
  );

  Map<String, dynamic> toJson() => {'username': username, 'password': password};

  @override
  List<Object?> get props {
    return [username, password];
  }
}
