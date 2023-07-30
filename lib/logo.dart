import 'package:flutter/material.dart';
import 'constraints.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogoScreen extends StatefulWidget {
  @override
  State<LogoScreen> createState() {
    return _LogoScreen();
  }
}

class _LogoScreen extends State<LogoScreen> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: 
    );
  }
}
