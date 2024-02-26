

import 'package:dio/dio.dart';
import 'package:network_module/network_module.dart';

mixin GeneralRepository<T> {
  Future<ApiResult<T>> checkResponseFailOrSuccess (Future<T> apiCallback) async{
    try {
      final T items = await apiCallback;
      return ApiResult.success(data: items);
    } on DioException catch(e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(error: errorMessage);
    }
  }
}