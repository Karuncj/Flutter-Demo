import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatefulWidget {
  const App
  ({super.key});

  @override
  State<App> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<App
> {
  String str="Hello";

  @override
  void initState(){
    super.initState();
  print("I was started");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Center(
          child:Text(str),
        ),
        TextButton(
          child:Text("Changed text"),
          onPressed: (){
          str="Button is Pressed";
          setState((){});
      },
      ),
      ],
      ),
      ),
    );
  }
}
