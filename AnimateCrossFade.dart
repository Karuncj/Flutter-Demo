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
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  bool first=false;
  void init() {
    super.initState();
    first=false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
      child:AnimatedCrossFade(
        firstChild: FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size:100,
        ),
        
        secondChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child:Text("Animate"),
              
              onPressed: () {
                setState(() {
                          first=!first;
                                });
                },
            ),
            FlutterLogo(
              style: FlutterLogoStyle.stacked,
              size: 100,
            ),
          ],
        ), crossFadeState:first ? CrossFadeState.showFirst :CrossFadeState.showSecond,
         duration: Duration(seconds: 5),
        )
      )
    );
  }
}
