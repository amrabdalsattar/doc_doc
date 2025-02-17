import 'package:doc_doc/core/networking/api_error_handler/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/features/home/data/apis/home_api_service.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';

class SpecializationsRepo {
  final HomeApiService _apiService;
  const SpecializationsRepo(this._apiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await _apiService.getSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
