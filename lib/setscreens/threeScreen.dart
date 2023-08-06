import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screenthree extends StatelessWidget{
  Widget build(BuildContext context){
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Start your projects',style: TextStyle(fontSize: 20)),
          Expanded(
            child: Lottie.asset(
              'assets/animations/project.json',
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