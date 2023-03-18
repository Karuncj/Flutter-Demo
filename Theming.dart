import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
      theme: ThemeData(
        primaryColor: Colors.amber,
        brightness: Brightness.light,
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            letterSpacing: 3.0,
            fontWeight: FontWeight.w300,
          ),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amberAccent),
      ),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theming",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Container(
       child: Theme(
         child: Center(child: Text("Sample text over here")),
         data: ThemeData(
          hoverColor: Colors.pinkAccent,
          canvasColor: Colors.tealAccent
         ),
       ),
       ),
    );
  }
}
