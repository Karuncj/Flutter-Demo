import 'package:flutter/material.dart';
void main(){
runApp(App());
}

class App extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Column(
          children:<Widget>
          [
            Expanded(
              flex:1,
              child: Card(
                child: Center(child:Text("Hello Card1"),
                ),
                ),
                ),
            Expanded(
              flex:1,
              child: Card(
                child: Center(child:Text("Hello Card2"),
                ),
                ),
            ),
            Expanded(
              flex:1,
              child: Card(
                child: Center(child:Text("Hello Card3"),
                ),
                ),
            )
          ],
        ),
      )
    );
  }
}
