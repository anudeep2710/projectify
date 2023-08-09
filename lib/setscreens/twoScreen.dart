import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screentwo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                    SizedBox(height: 70,),

          Text('Customise Your Workspace ', style: TextStyle(fontSize: 20)),
          Expanded(
            child: Lottie.asset(
              'assets/animations/laptop.json',
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
