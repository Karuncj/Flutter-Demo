import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str="Button not Pressed";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child:Column(
             mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network("data:image/jpeg;base64,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"),
              Chip(
                label: Text(
                  str,style:TextStyle(
                    color: Color.fromARGB(255, 78, 233, 7)
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextButton(
                child: Text("Click Me"),
                onPressed: (){
                  str="You Just Cicked The Button";
                  setState((){});
                },
               ),
             )
              ],
              )
          )
            ),
          );
  }
}
