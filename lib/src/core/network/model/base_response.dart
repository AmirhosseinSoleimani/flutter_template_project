import 'package:dio/dio.dart';
import 'package:network_module/network_module.dart';

class BaseResponse {
  final int? resultCode;
  final List<String>? failures;

  BaseResponse({
    this.resultCode,
    this.failures,
  });

  // Use the generated factory method
  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      resultCode: json['resultCode'],
      failures: json['failures']?.cast<String>(),
    );
  }
}

class BaseListResponse<T> extends BaseResponse {
  final List<T>? data;

  BaseListResponse({
    super.resultCode,
    super.failures,
    this.data,
  });

  factory BaseListResponse.fromJson(Map<String, dynamic> json) {
    return BaseListResponse<T>(
      resultCode: json['resultCode'],
      failures: json['failures']?.cast<String>(),
      data: json['data']?.cast<T>(),
      // Assuming T is a type supported by cast<T>()
    );
  }
}

class BaseSingleResponse<T> extends BaseResponse {
  final T? data;

  BaseSingleResponse({
    super.resultCode,
    super.failures,
    this.data,
  });

  factory BaseSingleResponse.fromJson(Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonData) {
    if (!json.containsKey('resultCode') || !json.containsKey('failures') || !json.containsKey('data')) {
      throw const FormatException('Invalid BaseSingleResponse format');
    }
    return BaseSingleResponse(
      resultCode: json['resultCode'] as int,
      failures: json['failures']?.cast<String>(),
      data: fromJsonData(json['data']),
    );
  }
}
