import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screenone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Manage your tasks with projectify',style: TextStyle(fontSize: 20),),
          Expanded(
            child: Lottie.asset(
              'assets/animations/notepad.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}