import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("I am started");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      body:Center(
      child:Image.asset(
        "image/200230.jpg"
      ),
      ),
      ),
    );
    }
}
