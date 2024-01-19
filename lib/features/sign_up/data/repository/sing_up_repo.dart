import 'package:mide_mate/core/networking/api_error_hundler.dart';
import 'package:mide_mate/core/networking/api_result.dart';
import 'package:mide_mate/core/networking/api_services.dart';
import 'package:mide_mate/features/sign_up/data/models/register_request.dart';
import 'package:mide_mate/features/sign_up/data/models/register_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(ApiService apiService) : _apiService = apiService;
  Future<ApiResult<RegisterResponse>> singUp(
      RegisterRequest registerRequest) async {
    var data = await _apiService.register(registerRequest);
    try {
      return ApiResult.success(data);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
