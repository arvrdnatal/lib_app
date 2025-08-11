import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lib_app/core/routes/route_names.dart';
import 'package:lib_app/domain/injections/injections.dart';
import 'package:lib_app/ui/features/splash/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _bloc = getIt<SplashBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<SplashBloc, SplashState>(
            bloc: _bloc,
            builder: (context, state) {
              return Text("Splash Page ${state.seconds}");
            },
            listener: (context, state) {
              switch (state.auth) {
                case SplashFinalState.authenticated:
                  GoRouter.of(context).go(Routes.home.path);
                case SplashFinalState.unauthenticated:
                  GoRouter.of(context).go(Routes.home.path);
                case null:
                  _bloc.counter();
              }
            },
          ),
        ),
      ),
    );
  }
}
