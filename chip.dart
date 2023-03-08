import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child:Chip(
              label:Text("Hello Karun",style: TextStyle(color: Color.fromARGB(255, 231, 76, 15),
              fontSize: 30,fontWeight: FontWeight.bold
              )
),
                
          ),
            ),
            ),
          );
  }
}
