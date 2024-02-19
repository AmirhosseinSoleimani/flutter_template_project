import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:eks_khedamtresan/src/core/network_state/base_response.dart';
import 'package:eks_khedamtresan/src/core/typedefs.dart';

class DioService {
  final Dio _dio;
  final CacheOptions? globalCacheOptions;
  final CancelToken _cancelToken;

  DioService({
    required Dio dioClient,
    this.globalCacheOptions,
    Iterable<Interceptor>? interceptors,
    HttpClientAdapter? httpClientAdapter,
  })  : _dio = dioClient,
        _cancelToken = CancelToken() {
    if (interceptors != null) _dio.interceptors.addAll(interceptors);
    if (httpClientAdapter != null) _dio.httpClientAdapter = httpClientAdapter;
  }

  Future<BaseSingleResponse<R>> get<R>({
    required Function(Map<String, dynamic>) create,
    required String endpoint,
    JSON? queryParams,
    Options? options,
    CacheOptions? cacheOptions,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<JSON>(
      endpoint,
      queryParameters: queryParams,
      options: _mergeDioAndCacheOptions(
        dioOptions: options,
        cacheOptions: cacheOptions,
      ),
      cancelToken: cancelToken ?? _cancelToken,
    );
    return BaseSingleResponse<R>.fromJson(response.data!,create);
  }

  Future<BaseSingleResponse<R>> post<R>({
    required Function(Map<String, dynamic>) create,
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.post<JSON>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return BaseSingleResponse<R>.fromJson(response.data!,create);
  }

  Future<BaseSingleResponse<R>> patch<R>({
    required Function(Map<String, dynamic>) create,
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.patch<JSON>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return BaseSingleResponse<R>.fromJson(response.data!,create);
  }

  // Future<BaseSingleResponse<R>> delete<R>({
  //   required Function(Map<String, dynamic>) create,
  //   required String endpoint,
  //   JSON? data,
  //   Options? options,
  //   CancelToken? cancelToken,
  // }) async {
  //   final response = await _dio.delete<JSON>(
  //     endpoint,
  //     data: data,
  //     options: options,
  //     cancelToken: cancelToken ?? _cancelToken,
  //   );
  //   return BaseSingleResponse<R>.fromJson(response.data!);
  // }

  Options? _mergeDioAndCacheOptions({
    Options? dioOptions,
    CacheOptions? cacheOptions,
  }) {
    if (dioOptions == null && cacheOptions == null) {
      return null;
    } else if (dioOptions == null && cacheOptions != null) {
      return cacheOptions.toOptions();
    } else if (dioOptions != null && cacheOptions == null) {
      return dioOptions;
    }
    final cacheOptionsMap = cacheOptions!.toExtra();
    final options = dioOptions!.copyWith(
      extra: <String, dynamic>{...dioOptions.extra!, ...cacheOptionsMap},
    );
    return options;
  }
}
