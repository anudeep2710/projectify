import 'package:flutter/material.dart';
import 'constraints.dart';
import 'package:google_fonts/google_fonts.dart';
import 'responsive.dart';

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'logo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: Scaffold(
        body: Center(
          child: LogoImage(),
        ),
      ),
    );
  }
}

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        width: 100, // Adjust the size for mobile devices
        height: 100, // Adjust the size for mobile devices
        child: Image.asset(
          'assets/images/logo.png',
        ),
      ),
      tablet: Container(
        width: 150, // Adjust the size for tablet devices
        height: 150, // Adjust the size for tablet devices
        child: Image.asset(
          'assets/images/logo.png',
        ),
      ),
      desktop: Container(
        width: 200, // Adjust the size for desktop devices
        height: 200, // Adjust the size for desktop devices
        child: Image.asset(
          'assets/images/logo.png',
        ),
      ),
    );
  }
}
