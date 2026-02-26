import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey APP",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle:true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            color: Colors.black45,
            child: Text(
              "This is a Container",
              style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w900
              ),
            ),
          ),
        ),
      ),
    );
  }
}
