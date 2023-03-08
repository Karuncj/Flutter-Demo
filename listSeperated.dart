import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:ListView.separated
        (itemBuilder:(context, index) {
          return ListTile
          (title: Text("Tile No"+index.toString()),
          );
          },
          itemCount: 20,
          separatorBuilder: (context, index){
            if((index+1) %5 ==0){
              return ListTile(
                title:Text(index.toString()),
                selected: true,
                onTap: () {
                  print(index);
                },
                onLongPress:(){
                  print(" you Long Pressed");
                },
                );
              }else{
                return Container();
              }
            }
        ),
        )
        );
  }
}
