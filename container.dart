import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is My first app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey APP",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle:true,
          backgroundColor: Colors.black,
        ),
        body:
            Align(
              alignment: Alignment.center,
              child:
              Container(
              height: 200,
              width: 300,
              color: Colors.brown,
            )
      )
      ),
    );
  }
}
