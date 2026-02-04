import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // --- MOCK LOGIC ---
  bool _loading = false;
  final String auth = "my_auth_instance";

  Future<void> _handleSignup(dynamic auth) async {
    setState(() {
      _loading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Signup logic triggered!")),
      );
    }
  }

  // --- LOGIC FOR LONG PRESS ---
  void _showLongPressMessage() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Success!"),
        content: const Text("You long-pressed the button."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Long Press Example")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // --- BUTTON 1: Navigation ---
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TextScreen()),
                  );
                },
                child: const Text("Click here (Nav)", style: TextStyle(fontSize: 20)),
              ),

              const SizedBox(height: 20),

              // --- BUTTON 2: THE LONG PRESS BUTTON ---
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Different color to stand out
                  minimumSize: const Size(double.infinity, 48),
                ),
                // 1. Standard press (Tap)
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(duration: Duration(milliseconds: 500), content: Text("That was a short tap.")),
                  );
                },
                // 2. LONG PRESS ACTION ADDED HERE
                onLongPress: _showLongPressMessage,
                child: const Text(
                  "Hold Me (Long Press)",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              const SizedBox(height: 20),

              // --- BUTTON 3: Signup ---
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: _loading ? null : () => _handleSignup(auth),
                child: _loading
                    ? const CircularProgressIndicator(
                    color: Colors.white, strokeWidth: 2)
                    : const Text(
                  "Signup",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Screen")),
      body: const Center(child: Text("You navigated here successfully!")),
    );
  }
}