import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoAppWidget extends StatelessWidget {
  const LogoAppWidget({super.key, this.toolBarStyle = false});

  final bool toolBarStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Lib App", style: GoogleFonts.gentiumBookPlus(fontSize: toolBarStyle ? 27 : 44)),
    );
  }
}
