import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:ListView.builder(itemBuilder:(Buildcontext, index) {
          return ListTile(title: Text("Tile No"+index.toString()),
          );
          },
          itemCount: 20,
        ),
        )
        );
  }
}
