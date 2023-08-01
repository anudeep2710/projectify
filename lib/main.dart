

import 'package:flutter/material.dart';
import 'package:projectify/logo.dart';
import 'constraints.dart';


void main(){
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'logo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
       
        canvasColor: secondaryColor,
      ),
      home:LogoScreen()));
}