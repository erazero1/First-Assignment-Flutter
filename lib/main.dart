import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First Assignment",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _color = true;
  final r = Random();
  var _text = "Hello World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Assignment"),
      ),
      body: Center(
        child: Text(_text),
      ),
      backgroundColor: _color ? Colors.white : Color.fromARGB(255, r.nextInt(255), r.nextInt(255), r.nextInt(255)),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _text = "Hello World";
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _text = "";
              });
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _color = !_color;
              });
            },
            child: Icon(Icons.change_circle),
          ),
        ],
      ),
    );
  }
}
