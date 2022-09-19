import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_transform/perspective/flip_animation.dart';
import 'package:flutter_transform/perspective/transform01.dart';
import 'package:flutter_transform/perspective/transform02.dart';
import 'package:flutter_transform/perspective/transform03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Transform',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Transform'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transform01()),
                );
              },
              child: Text('Transform 01'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(240, 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transform02()),
                );
              },
              child: Text('Transform 02'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(240, 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transform03()),
                );
              },
              child: Text('Transform 03'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(240, 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FlipAnimation()),
                );
              },
              child: Text('Flip Animation'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(240, 30),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
