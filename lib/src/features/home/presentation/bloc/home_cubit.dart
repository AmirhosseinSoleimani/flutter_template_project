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


  void getUser() async{
    final response = await userRepository.getUser();
    if(response is Success) {
      UserEntity userEntity = response.value as UserEntity;
      print(userEntity.fullName);
    } else if(response is Failure){
      print(response.errorMessage);
    }

  }
}
