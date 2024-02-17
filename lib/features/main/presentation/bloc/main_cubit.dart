import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

@injectable
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial());
  ValueNotifier<int> notifier = ValueNotifier<int>(0);
}
