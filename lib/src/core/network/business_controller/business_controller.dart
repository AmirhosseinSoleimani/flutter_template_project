import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:eks_khedamtresan/src/features/home/domain/user_entity.dart';


class BusinessController<T>{
  static baseSingleResponseController<T> (BaseSingleResponse baseSingleResponse, Function(T) toDomain) {
    switch (baseSingleResponse.resultCode) {
      case 0:
        T dataModel = baseSingleResponse.data as T;
        print(toDomain(dataModel));
        return Success(toDomain(dataModel));
      case 3:
        return const Failure("کاربر مجوز استفاده از سرویس ندارد");
      case 4:
        return const Failure("بروز خطا در سیستم");
      default:
        return const Failure("خطا سیستمی");
    }
  }
}