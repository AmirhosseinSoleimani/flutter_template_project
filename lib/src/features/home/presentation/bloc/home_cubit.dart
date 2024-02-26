import 'package:eks_khedamtresan/src/core/network/network.dart';
import 'package:eks_khedamtresan/src/features/home/domain/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../repository/user_repository.dart';
import 'home_state.dart';


@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.userRepository}) : super(const HomeState.initial());

  final UserRepository userRepository;


  void getUser() async {
    emit(const HomeState.loading());
    Result<UserEntity, String>? result = await userRepository.getUser();
    if (result is Success<UserEntity, String>) {
      final userEntity = result.value;
      emit(HomeState.successful(userEntity: userEntity));
    } else if (result is Failure<UserEntity, String>) {
      emit(HomeState.error(result.errorMessage));
    }
  }
}
