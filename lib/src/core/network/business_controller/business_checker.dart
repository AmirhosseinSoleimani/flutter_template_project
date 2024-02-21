import 'package:dio/dio.dart';
import 'package:eks_khedamtresan/src/core/network/result_type/result_type.dart' as result;
import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:flutter/material.dart';



class BusinessChecker<T> {
  static businessChecker<T>(Response response, Function(Map<String, dynamic>) fromJson) {
    final businessController = BusinessController.baseSingleResponseController<T>(BaseSingleResponse.fromJson(response.data), fromJson);
    if (businessController is result.Success) {
      return businessController.value;
    } else if (businessController is result.Failure) {
      return businessController.errorMessage;
    } else {
      debugPrint('Unexpected data type');
      businessController.errorMessage = 'Unexpected data type';
      return businessController.errorMessage;
    }
  }
}