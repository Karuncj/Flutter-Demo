import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "https://txt2html.sourceforge.net/README.txt";
  var data;
  bool load=true;
  @override
  void initState() {
    super.initState();
    fetchData();
    load = true;
  }

  fetchData() async {
    data = await http.get(Uri.https(url));
    load = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ListView(
      children: <Widget>[
        load ? CircularProgressIndicator() : Text(data.toString()),
      ],
    )));
  }
}
