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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int onjakkubik = 1;
  int soljakkubik = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Tapshyrma 5'),
        centerTitle: true,
      ),
      body: Center(
          child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  soljakkubik = onjakkubik = Random().nextInt(7);
                });
              },
              child: Image.asset(
                  'assets/dice${soljakkubik == 0 ? 1 : soljakkubik}.png'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  setState(() {
                    onjakkubik = soljakkubik = Random().nextInt(7);
                  });
                },
                child: Image.asset(
                    'assets/dice${onjakkubik == 0 ? 1 : onjakkubik}.png')),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      )),
    );
  }
}
