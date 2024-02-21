import 'package:eks_khedamtresan/src/features/home/data/models/models.dart';
import 'package:eks_khedamtresan/src/features/home/domain/user_entity.dart';

extension UserRemoteToDomain on UserModel {
  UserEntity toDomain() {
    return UserEntity(
      firstName: firstName,
      lastName: lastName,
      fullName: fullName,
      mobileNumber: mobileNumber,
      nationalCode: nationalCode,
      gender: gender,
    );
  }
}