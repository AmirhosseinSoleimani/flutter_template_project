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


  Future<BaseSingleResponse<R>> getSingle<R>({
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

  Future<BaseListResponse<R>> getList<R>({
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
    return BaseListResponse<R>.fromJson(response.data!,create);
  }

  Future<BaseSingleResponse<R>> postSingle<R>({
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

  Future<BaseListResponse<R>> postList<R>({
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
    return BaseListResponse<R>.fromJson(response.data!,create);
  }

  Future<BaseSingleResponse<R>> patchSingle<R>({
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

  Future<BaseListResponse<R>> patchList<R>({
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
    return BaseListResponse<R>.fromJson(response.data!,create);
  }

  Future<BaseSingleResponse<R>> deleteSingle<R>({
    required Function(Map<String, dynamic>) create,
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.delete<JSON>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return BaseSingleResponse<R>.fromJson(response.data!,create);
  }
  Future<BaseListResponse<R>> deleteList<R>({
    required Function(Map<String, dynamic>) create,
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.delete<JSON>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return BaseListResponse<R>.fromJson(response.data!,create);
  }

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
