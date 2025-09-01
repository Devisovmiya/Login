import 'package:flutter/material.dart';
import 'gradient_container.dart';



void main() {

 runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false ,             //to hide debug mode banner
  home: Scaffold(  
  body:GradientContainer(Color.fromARGB(255, 182, 236, 120), 
          Color.fromARGB(255, 129, 226, 179),
          ), 
      
 ),
 ),
 );
}