import 'package:flutter/material.dart';
import 'widgets/choice_tile.dart';
class ChoiceScreen extends StatefulWidget{
   State<ChoiceScreen> createState() {
    return _ChoiceScreenState();
  }
}
class _ChoiceScreenState extends State<ChoiceScreen>{
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
        Center(child: AnswerButton(answerText: "Team", onTap: (){})),
        SizedBox(height: 10,),
        Center(child: AnswerButton(answerText: "Personal", onTap: (){})),

        


      ],),
    );
  }
}
