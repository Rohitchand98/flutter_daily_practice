import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("This is my first Own Flutter code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.amber)),
                Text("This is my second",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.amber)),
                Text("This is my first Own Flutter code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.amber)),
                Text("This is my first Own Flutter code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.amber))
              ],
            )
        ),
      ),
    );
  }
}