import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoverUI(),
    );
  }
}

class CoverUI extends StatelessWidget {
  const CoverUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            color: const Color(0xFFF89D60),
          ),

          // Top-right diagonal stripes
          Positioned(
            top: -60,
            right: -60,
            child: Transform.rotate(
              angle: -0.6,
              child: Container(
                width: 220,
                height: 80,
                color: Colors.black,
              ),
            ),
          ),

          Positioned(
            top: -20,
            right: -40,
            child: Transform.rotate(
              angle: -0.6,
              child: Container(
                width: 220,
                height: 80,
                color: Colors.black,
              ),
            ),
          ),

          // Bottom-left diagonal stripe
          Positioned(
            bottom: -80,
            left: -60,
            child: Transform.rotate(
              angle: -0.6,
              child: Container(
                width: 300,
                height: 120,
                color: Colors.black,
              ),
            ),
          ),

          // Center Logo Image
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // Praise the Lord
                Text(
                  "✝ PRAISE THE LORD",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    letterSpacing: 0,
                  ),
                ),

                SizedBox(height: 50),

                // LOGO IMAGE
                Image(
                  image: AssetImage("assets/images/ziiontechno.png"),
                  height: 350,
                  width: 380,
                  fit: BoxFit.contain,
                ),
                Text(
                  "Welcome to Ziion Technology🚀",
                  style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}