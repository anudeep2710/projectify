import 'package:flutter/material.dart';
import 'package:projectify/login.dart';
import 'package:projectify/setscreens/introscreen.dart';
// import 'package:projectify/login.dart';
// import 'package:projectify/login.dart';
import 'responsive.dart';

class LogoScreen extends StatefulWidget {
  @override
  State<LogoScreen> createState() {
    return _LogoScreenState();
  }
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextpage(context);
  }

  Future<void> _navigateToNextpage(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>TutorialScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: LogoImage(),
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
