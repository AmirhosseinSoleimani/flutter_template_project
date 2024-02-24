
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user_entity.dart';
part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.successful({required UserEntity userEntity}) = _successful;
  const factory HomeState.error(String errorMessage) = _error;

}
