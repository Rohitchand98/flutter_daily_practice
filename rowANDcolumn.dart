import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Hello check this out")),
        body: Column(
          children: [
            //column
            Container(
              height:300,
              width: double.infinity,
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//vertically aligned
                crossAxisAlignment: CrossAxisAlignment.stretch,//Horizontically aligned
                children: [
                  colorBox(Colors.red),
                  colorBox(Colors.green),
                  colorBox(Colors.orange),
                ],
              ),
            ),
            SizedBox(height: 20),
            //ROW alignment
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//horizontical
                crossAxisAlignment: CrossAxisAlignment.stretch,//vertical
                children: [
                  colorBox(Colors.black),
                  colorBox(Colors.blue),
                  colorBox(Colors.purple),
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  colorBox(Color color) {
    return Container(
      height: 30,
      width: 30,
      color: color,
    );
  }
}
