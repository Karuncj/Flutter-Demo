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
        appBar: AppBar(
          title: Text("My app "),
          centerTitle: true,
          actions:<Widget>[Icon(Icons.access_time)]
        ),
        backgroundColor: Colors.amber,
        body: Text("Text on Body"),
        bottomNavigationBar:BottomNavigationBar(

          items: [
            BottomNavigationBarItem(
            icon:Icon(Icons.home),
            backgroundColor: Colors.lightBlueAccent,
            label: "Home"
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.back_hand),
            backgroundColor: Colors.lightBlueAccent,
            label: "Hand"
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.recent_actors),
            backgroundColor: Colors.lightBlueAccent,
            label: "Contacts"
            ),
          ],
          ),
          drawer:Drawer(
           child:Text("I am left drawer"),
           ),
          endDrawer: Text("I am right drawer"),
          ),
            );
  }
}
