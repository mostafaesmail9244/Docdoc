import 'package:mide_mate/core/networking/api_error_hundler.dart';
import 'package:mide_mate/core/networking/api_result.dart';
import 'package:mide_mate/core/networking/api_services.dart';
import 'package:mide_mate/features/login/data/models/login_request.dart';
import 'package:mide_mate/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final response = await _apiService.login(loginRequest);
      return ApiResult.success(response);
    } catch (erro) {
      return ApiResult.failure(ErrorHandler.handle(erro));
    }
  }
}
