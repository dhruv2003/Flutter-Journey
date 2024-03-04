import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('I am Poor!'),
        ),
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/icons8-coal-100.png'),
        ),
      ),
    ),
  ));
}

