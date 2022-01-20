import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_arrow_outlined),
              label: Text('Play'),
            ),
          ),
        ),
      ),
    );
  }
}
