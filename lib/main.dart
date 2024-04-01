import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Count: $count'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => count++),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
