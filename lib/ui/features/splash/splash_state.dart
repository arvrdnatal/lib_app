import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_app/core/util/splash_phrases_util.dart';

part 'splash_bloc.dart';
part 'splash_state.freezed.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState({
    required int seconds,
    required String status,
    SplashFinalState? auth,
  }) = _SplashState;
}

enum SplashFinalState {
  authenticated, unauthenticated
}