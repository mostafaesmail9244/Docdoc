import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request.g.dart';
@JsonSerializable()
class RegisterRequest {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  RegisterRequest(
      {required this.name,
      required this.email,
      required this.phone,
      required this.gender,
      required this.password,
      required this.passwordConfirmation});
  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
