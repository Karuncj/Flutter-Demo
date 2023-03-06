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
          child:TextButton(
            child:Text("""
Hello Karun"""),
            onPressed:()
            {
              print("HEllo Welcome");
            }
              ),
            ),
            ),
          );
  }
}
