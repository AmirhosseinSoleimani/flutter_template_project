import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:eks_khedamtresan/src/core/network/result_type/result_type.dart' as result_type;
import 'package:eks_khedamtresan/src/features/home/data/models/models.dart';
import 'package:eks_khedamtresan/src/features/home/domain/user_entity.dart';
import 'package:eks_khedamtresan/src/features/home/repository/mappers/remote_to_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:eks_khedamtresan/src/features/home/data/data_source/user_data_source.dart';

@lazySingleton
class UserRepository with GeneralRepository<BaseSingleResponse> {
  final UserRemoteService userRemoteService;

  UserRepository({required this.userRemoteService});

  Future<result_type.Result<UserEntity, String>?> getUser() async {
    final response = await checkResponseFailOrSuccess(userRemoteService.getUser({}));
    return response.when(
        success: (BaseSingleResponse baseSingleResponse) {
          Result<UserEntity, String> result = businessController<UserEntity>(baseSingleResponse, (baseSingleResponse.data as UserModel).toDomain());
          if(result is result_type.Success<UserEntity, String>) {
            return result_type.Success(result.value);
          }
          if (result is result_type.Failure<UserEntity, String>) {
            return result_type.Failure(result.errorMessage);
          }
          return const result_type.Failure('Error');
        },
        failure: (error){
          final err = error;
          return result_type.Failure<UserEntity, String>(err!);
        });

  }
}



