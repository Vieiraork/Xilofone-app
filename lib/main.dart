import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({required int number, required Color color}) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            playsound(number);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              color,
            ),
          ),
          child: const Text(''),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(number: 1, color: Colors.red),
              buildKey(number: 2, color: Colors.orange),
              buildKey(number: 3, color: Colors.yellowAccent),
              buildKey(number: 4, color: Colors.green),
              buildKey(number: 5, color: Colors.lightBlueAccent),
              buildKey(number: 6, color: Colors.indigo),
              buildKey(number: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
