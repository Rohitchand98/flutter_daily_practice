// Riverpod
// Imagine your app has different pieces of data or services (like a user's name, a list of items, or
// a logged-in status). Riverpod provides a structured way to:
// 1.Define these pieces of data/services (called Providers).
// 2.Access them anywhere in your app (using a ref object).
// 3.React to changes in that data to update your UI.
// Example with Riverpod:
// Dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// State provider
final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter System Design Example')),
        body: const CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $count', style: const TextStyle(fontSize: 24)),
          ElevatedButton(
            onPressed: () => ref.read(counterProvider.notifier).state++,
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
