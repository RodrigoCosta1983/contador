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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('InDecrement');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://rodrigocosta-dev.com/images/man.jpg'),
               fit: BoxFit.cover
               // image: AssetImage('assets/images/business-online-shopping.jpg')
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
              'Seja Bem Vindo!!!',
              style: TextStyle(
                  fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
            ),
            const Text(
              'Pode entrar!',
              style: TextStyle(
                  fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
            ),
            // const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                '0',
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
            ),
            // const SizedBox(height: 32),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      foregroundColor: Colors.black38,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )),
                  child: const Text(
                    'Saiu',
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ),
                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      foregroundColor: Colors.black38,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )),
                  child: const Text(
                    'Entrou',
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
