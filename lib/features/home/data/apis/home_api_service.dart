import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/specializations_response_model.dart';

part 'home_api_service.g.dart';

@retrofit.RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @retrofit.GET(ApiConstants.specializations)
  @retrofit.Headers(<String, dynamic>{
    'Accept': 'application/json',
  })
  Future<SpecializationsResponseModel> getSpecializations();
}
