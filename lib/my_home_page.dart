import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void _decrementCounter() {
    setState(() {
      
      if (_counter != 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Increment Counter'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('$_counter'),
            ElevatedButton(onPressed: _incrementCounter, child: Text('Increment')),
            ElevatedButton(onPressed: _decrementCounter, child: Text('decrement')),
            ],
        ),
      ),
    );
  }
}
