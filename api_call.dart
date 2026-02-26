import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodScreen(),
  ));
}

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {

  List meals = [];

  @override
  void initState() {
    super.initState();
    fetchFood();
  }

  Future<void> fetchFood() async {
    final response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s=chicken'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        meals = data['meals'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food API Example")),
      body: meals.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              meals[index]['strMealThumb'],
              width: 50,
            ),
            title: Text(meals[index]['strMeal']),
          );
        },
      ),
    );
  }
}