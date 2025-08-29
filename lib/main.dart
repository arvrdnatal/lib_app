import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lib_app/core/routes/routes.dart';
import 'package:lib_app/domain/injections/injections.dart';

void main() {
  initInjections();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.gentiumBookPlusTextTheme(),
      ),
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
