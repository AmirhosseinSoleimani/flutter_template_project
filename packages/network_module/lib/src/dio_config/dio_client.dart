import 'package:dio/dio.dart';
import 'package:network_module/src/dio_config/pretty_dio_logger.dart';
import 'package:utility/utility.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  late final Dio dio;
  factory DioClient() => _instance;
  DioClient._internal() {
    dio = Dio(
        BaseOptions(
            responseType: ResponseType.json,
            connectTimeout: Duration(seconds: 30),
            receiveTimeout: Duration(seconds: 30),
        )
    )..interceptors.add(PrettyDioLogger());
  }
}