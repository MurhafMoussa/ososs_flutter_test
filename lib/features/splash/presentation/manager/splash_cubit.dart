import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial()) {
    _timer = Timer(const Duration(seconds: 3), () {
      emit(const SplashState.timeToNavigateToHome());
    });
  }
  late final Timer _timer;
  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
