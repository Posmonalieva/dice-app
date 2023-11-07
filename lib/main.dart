import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Flutter Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int left = 1;
  int right = 6;

  void _changeDice() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffED5A46),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xffED5A46),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  //кенейтилген
                  child: TextButton(
                    onPressed: () {
                      _changeDice();
                    },
                    child: Image.asset(
                      'assets/icons/dice$left.png',
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  //расширенный, растянутый
                  child: TextButton(
                    onPressed: () {
                      _changeDice();
                    },
                    child: Image.asset(
                      'assets/icons/dice$right.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  left = 1;
                  right = 1;
                });
              },
              child: const Text(
                'Restart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
