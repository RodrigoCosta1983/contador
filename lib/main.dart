import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void decrement() {
  print('Decrement');
}

void increment() {
  print('InDecrement');
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pode entrar!',
            style: TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            '0',
            style: TextStyle(fontSize: 90, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: decrement,
                child: Text('Saiu', style: TextStyle(color: Colors.lightBlueAccent),),
              ),

              TextButton(
                onPressed: increment,
                child: Text('Entrou', style: TextStyle(color: Colors.lightBlueAccent),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
