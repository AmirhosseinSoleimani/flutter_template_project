import 'package:eks_khedamtresan/src/core/network/business_controller/business_checker.dart';
import 'package:eks_khedamtresan/src/core/network/dio_services/dio_services.dart';
import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:utility/utility.dart';
import 'package:injectable/injectable.dart';
import 'package:network_module/network_module.dart';
import 'package:eks_khedamtresan/src/features/home/data/models/models.dart';

@LazySingleton()
class UserRemoteService {
  final DioClient _dioClient = DioClient();
  final DioServices _dioServices = DioServices();

  Future<dynamic> getUser(Map<String, dynamic> body) async {
    try{
      var response = await _dioServices.postRequest(
          dioClient: _dioClient,
          path: ApiConfig.getProfile,
          body: body,
          headers: HeadersConfig.headersWithToken);
      return await BusinessChecker.businessChecker<UserModel>(response, UserModel.fromJson);
    }catch(e) {
      print('111111111111111111111111111111111');
      print(e);
    }

  }
}

