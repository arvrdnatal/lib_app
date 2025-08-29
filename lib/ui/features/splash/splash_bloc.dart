part of 'splash_state.dart';

class SplashBloc extends Cubit<SplashState> {
  SplashBloc() : super(SplashState(seconds: 7, status: '')) {
    counter();
  }

  void counter() {
    _manageSeconds();
  }

  void _manageSeconds() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      if (state.seconds == 0) {
        emit(state.copyWith(auth: SplashFinalState.authenticated));
      } else {
        emit(state.copyWith(
          auth: null,
          seconds: state.seconds - 1,
          status: SplashPhrasesUtil().getPhrase()
        ));
      }
    });
  }


}