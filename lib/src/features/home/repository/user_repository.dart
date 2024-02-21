import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:eks_khedamtresan/src/features/home/data/models/models.dart';
import 'package:eks_khedamtresan/src/features/home/repository/mappers/remote_to_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:eks_khedamtresan/src/features/home/data/data_source/user_data_source.dart';

@lazySingleton
class UserRepository {
  final UserRemoteService userRemoteService;

  UserRepository({required this.userRemoteService});

  Future<dynamic> getUser() async {
    final response = await userRemoteService.getUser({});
    if (response is UserModel) {
      return Success(response.toDomain());
    } else {
      return Failure(response);
    }
  }
}
