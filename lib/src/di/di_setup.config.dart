// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/home/data/data_source/user_data_source.dart' as _i5;
import '../features/home/presentation/bloc/home_cubit.dart' as _i7;
import '../features/home/repository/user_repository.dart' as _i6;
import '../features/main/presentation/bloc/main_cubit.dart' as _i3;
import '../features/splash/presentation/bloc/splash_cubit.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.MainCubit>(() => _i3.MainCubit());
  gh.factory<_i4.SplashCubit>(() => _i4.SplashCubit());
  gh.lazySingleton<_i5.UserRemoteService>(() => _i5.UserRemoteService());
  gh.lazySingleton<_i6.UserRepository>(
      () => _i6.UserRepository(userRemoteService: gh<_i5.UserRemoteService>()));
  gh.factory<_i7.HomeCubit>(
      () => _i7.HomeCubit(userRepository: gh<_i6.UserRepository>()));
  return getIt;
}
