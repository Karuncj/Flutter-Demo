import 'package:flutter/material.dart';
void main(){
runApp(App());
}

class App extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child: Card(
            elevation: 15.0,shadowColor: Colors.deepPurple,
            shape: Border.all(color: Colors.deepOrange),
            color: Color.fromARGB(255, 35, 218, 10),
           child: Padding(
            
            padding:const EdgeInsets.all(50),
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children:<Widget>[
             FlutterLogo(
              size:30
             ),
             Padding(
              padding:const EdgeInsets.all(20),
             child:Text("Hello"),
             ),
           ]
           ),
             ),
           ), 
          ),
        )
      );
  }
}
