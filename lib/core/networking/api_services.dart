import 'package:dio/dio.dart';
import 'package:mide_mate/core/networking/api_constants.dart';
import 'package:mide_mate/features/login/data/models/login_request.dart';
import 'package:mide_mate/features/login/data/models/login_response.dart';
import 'package:mide_mate/features/sign_up/data/models/register_request.dart';
import 'package:mide_mate/features/sign_up/data/models/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);
  @POST(ApiConstants.register)
  Future<RegisterResponse> register(@Body() RegisterRequest registerRequest);
}
