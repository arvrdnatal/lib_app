import 'package:get_it/get_it.dart';
import 'package:lib_app/domain/injections/splash_injection.dart';

final getIt = GetIt.instance;

Future<void> initInjections() async {
  await splashInjections();
}
