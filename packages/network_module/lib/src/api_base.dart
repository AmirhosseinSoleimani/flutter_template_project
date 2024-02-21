import 'package:dio/dio.dart' show Response, DioException;
import 'package:network_module/src/dio_config/dio_extensions.dart';
import 'package:network_module/src/network_state/result/api_result.dart';
import 'dart:convert';
import 'package:network_module/src/dio_config/dio_client.dart';
import 'package:network_module/src/dio_config/dio_exceptions.dart';

abstract mixin class ApiBase<T> {
  final DioClient dioClient = DioClient();
  late final T data;

  Future<Response> _requestMethodTemplate(
      Future<Response<dynamic>> apiCallback) async {
      final Response response = await apiCallback;
      if(response.statusCode.success) {
        return response;
      }
      else {
        throw DioExceptions;
      }
  }

  //Generic method template for create item on server
  Future<Response> makePostRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  //Generic method template for update item on server
  Future<Response> makePutRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  //Generic method template for delete item from server
  Future<Response> makeDeleteRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  //Generic method template for getting data from Api
  Future<ApiResult<T>> makeGetRequest(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final Response response = await apiCallback;
      final data = json.decode(json.encode(response.data));
      return ApiResult.success(data: data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(error: errorMessage);
    }
  }
}

