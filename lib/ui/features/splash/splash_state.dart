import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_bloc.dart';
part 'splash_state.freezed.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState({
    required int seconds,
    SplashFinalState? auth,
  }) = _SplashState;
}

enum SplashFinalState {
  authenticated, unauthenticated
}