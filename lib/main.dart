import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() => runApp(DevicePreview(
      enabled: kIsWeb,
      builder: (_) => const App(),
    ));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main'),
        ),
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
