import 'package:dio/dio.dart';
import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:injectable/injectable.dart';
import 'package:network_module/network_module.dart';
import 'package:eks_khedamtresan/src/features/home/data/models/models.dart';
import 'package:eks_khedamtresan/src/core/resources/resources.dart';

@LazySingleton()
class UserRemoteService with ApiBase<BaseSingleResponse> {
  final DioClient _dioClient = DioClient();

  Future<BaseSingleResponse> getUser(Map<String, dynamic> body) async {
    final response = await makePostRequest(
      _dioClient.dio.post(
          ApiConfig.getProfile,
          data: body,
          options: Options(
              headers: HeadersConfig.headersWithToken
          )
      ),
    );
      return BaseSingleResponse.fromJson(response.data, UserModel.fromJson);
  }
}

