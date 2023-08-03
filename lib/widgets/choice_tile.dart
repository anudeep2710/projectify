import 'package:flutter/material.dart';
import 'package:projectify/constraints.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      width: double.minPositive,
      height: 60,
   
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          
          padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 40),
          foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 39, 23, 83),

        ),
        onPressed: onTap,
        child: Text(answerText),
      ),
    );
  }
}


