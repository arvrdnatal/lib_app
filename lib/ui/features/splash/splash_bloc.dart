part of 'splash_state.dart';

class SplashBloc extends Cubit<SplashState> {
  int _seconds = 5;

  SplashBloc() : super(SplashState(seconds: 5)) {
    counter();
  }

  void counter() {
    _seconds--;
    _manageSeconds();
  }

  void _manageSeconds() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      if (_seconds == 0) {
        emit(state.copyWith(
            auth: SplashFinalState.authenticated
        ));
      } else {
        emit(state.copyWith(
            auth: null,
            seconds: _seconds
        ));
      }
    });
  }
}