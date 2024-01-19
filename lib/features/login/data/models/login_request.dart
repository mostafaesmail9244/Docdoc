// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  final String email;
  final String password;
  LoginRequest({
    required this.email,
    required this.password,
  });
  
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
