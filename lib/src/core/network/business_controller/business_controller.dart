import 'package:eks_khedamtresan/src/core/network/network.dart';


class BusinessController<T>{
  static baseSingleResponseController<T> (BaseSingleResponse baseSingleResponse, Function(Map<String, dynamic>) fromJson) {
    switch (baseSingleResponse.resultCode) {
      case 0:
        return Success(fromJson(baseSingleResponse.data));
      case 3:
        return const Failure("کاربر مجوز استفاده از سرویس ندارد");
      case 4:
        return const Failure("بروز خطا در سیستم");
      default:
        return const Failure("خطا سیستمی");
    }
  }
}