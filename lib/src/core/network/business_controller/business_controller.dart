import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:eks_khedamtresan/src/core/network/result_type/result_type.dart' as result_type;


Result<T, String> businessController<T>(BaseSingleResponse response, T entityModel) {
  switch (response.resultCode) {
    case 0:
      return result_type.Success(entityModel);
    case 3:
      return const result_type.Failure("کاربر مجوز استفاده از سرویس ندارد");
    case 4:
      return const result_type.Failure("بروز خطا در سیستم");
    default:
      return const result_type.Failure("خطا سیستمی");
  }
}