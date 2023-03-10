import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget{
  @override
  createState() {
    return new Myappstate();
  }
}

class Myappstate extends State<Myapp>{
  @override
    Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        body:Center(

          child: Column(
              mainAxisSize:MainAxisSize.min,
            children:<Widget> [
              TextButton(
              child:Text("Press me"),
              onPressed: (){

              },
              onHover: (value) {
                print("hi");
              },
              ),
             Padding(
            padding:EdgeInsets.all(20),
            child:OutlinedButton(
              child:Text("Press me 2"),
              onPressed: () { 
                 print("U have pressed button 2");
               },

          ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.all(BorderSide.strokeAlignCenter),
            child: IconButton(
              icon: Icon(Icons.dark_mode),
               onPressed: () {
                print("Icon Pressed");
                 },
                 iconSize: 40.00,
                 tooltip:"dark mode",
            ),
          )
          ],
          )
        ),
      ),
    );
  }
  }
