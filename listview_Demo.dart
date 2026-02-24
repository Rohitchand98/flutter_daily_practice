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
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("User ${index+1}"),
            subtitle: Text("This is user number ${index+1}"),
            trailing: const Icon(Icons.arrow_forward_sharp),
            onTap: (){
              print("you tapped on User ${index+1}");
            },
          );
        }),
      ),
    );
  }
}
