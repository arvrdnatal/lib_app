import 'package:lib_app/ui/features/splash/splash_state.dart';

import 'injections.dart';

splashInjections() {
  getIt.registerSingleton(SplashBloc());
}
