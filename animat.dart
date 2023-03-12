import 'package:flutter/material.dart';

void main(){
  runApp(MainPage());
}

class MainPage extends StatefulWidget{
  _MainPage createState()=>_MainPage();
}

class _MainPage extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Main(),
    );
  }
}

class Main extends StatefulWidget{
  @override
  MainState createState()=>MainState();
}

class MainState extends State<Main> with SingleTickerProviderStateMixin{
   Animation animation;
       AnimationController animationController;
    @override
    void initstate(){
      super.initState();
      animationController=AnimationController(
        vsync: this,
        duration: Duration(
          seconds:5,
        )
      );
  animation=Tween(
    begin: 0.0,
    end: 1.0
    ).animate(CurvedAnimation(
      curve:Curves.linear,parent: animationController
    )  );
    animationController.forward();
    }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
     animation: animation,
     builder: (builder,child){
      print(animation.value);
    return Scaffold(
      body:Text("hello"),
     );
     },
    );
  }
}
