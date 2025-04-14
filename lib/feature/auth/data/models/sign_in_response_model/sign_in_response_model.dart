import 'package:equatable/equatable.dart';

import 'data.dart';

class SignInResponseModel extends Equatable {
  final LoginData? data;

  const SignInResponseModel({this.data});

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) {
    return SignInResponseModel(
      data:
          json['data'] == null
              ? null
              : LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {'data': data?.toJson()};

  @override
  List<Object?> get props => [data];
}
